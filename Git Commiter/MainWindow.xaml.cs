using System.Windows;
using System.IO;
using Microsoft.Win32;
using System.Diagnostics;


namespace Git_Commiter
{
    public partial class MainWindow : Window
    {
        OpenFileDialog openFileDialog;
        bool running = false;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void open_file(object sender, RoutedEventArgs e)
        {
            openFileDialog = new OpenFileDialog();
            openFileDialog.ShowDialog();
            File_upload.Content = System.IO.Path.GetFileName(openFileDialog.FileName);
        }

        private int ExecuteCommand(string command, int Timeout = 1000)
        {
            ProcessStartInfo ProcessInfo;
            Process Process;
            ProcessInfo = new ProcessStartInfo("cmd.exe", "/c " + command);
            ProcessInfo.CreateNoWindow = true;
            ProcessInfo.UseShellExecute = false;
            Process = Process.Start(ProcessInfo);
            Process.WaitForExit(Timeout);
            Process.Close();

            return 0;
        }

        private void commit_start(object sender, RoutedEventArgs e)
        {
            if (!running)
            {
                string repo_link = Repo_Link.Text;
                string folder_name = Folder_Name.Text;
                int max_commit = System.Int32.Parse(Max_commits.Text);
                int days = System.Int32.Parse(Days.Text);
                string file_type = openFileDialog.FileName.Substring(openFileDialog.FileName.IndexOf("."));
                string commit_text;

                var fileStream = openFileDialog.OpenFile();

                using (StreamReader reader = new StreamReader(fileStream))
                {
                    commit_text = reader.ReadToEnd();
                }

                Directory.CreateDirectory(folder_name);
                Directory.SetCurrentDirectory(folder_name);

                ExecuteCommand("git config --global commit.gpgsign false");
                ExecuteCommand("git init");
                ExecuteCommand("git branch -M main");
                ExecuteCommand(string.Format("git remote add origin {0}", repo_link));

                var rnd = new System.Random();

                for (int day = days; day != -0; day--)
                {
                    Directory.CreateDirectory(string.Format("{0}", day));
                    Directory.SetCurrentDirectory(string.Format("{0}", day));

                    int commit_on_day = rnd.Next(1, max_commit + 1);

                    for (int commit = 0; commit != commit_on_day; commit++)
                    {
                        string file_name = string.Format(string.Format("{0}{1}", commit, file_type));
                        File.WriteAllText(file_name, commit_text);
                        ExecuteCommand(string.Format("git add {0}", file_name));
                        ExecuteCommand(string.Format("git commit -m {0}.py --date=format:relative:{1}.hours.ago", commit, day * 24));
                    }
                    Directory.SetCurrentDirectory("..");
                }
                ExecuteCommand("git push origin main");
                commit_button.Content = "Finished";
            }
        }
    }
}