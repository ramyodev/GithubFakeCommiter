   M S B A M L   `   `   `  ���� G  CGit Commiter, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Git_CommiterGit_Commiter      Git_Commiter.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ,localclr-namespace:Git_Commiter       � Title$  Github Fake Commiter��$	��900��$	��800�� � Icon$ GitHub-Mark.png�� � WindowStartupLocation$ CenterScreen=�$��40(����	#FFCAD3C8$��Disabled=� � 
ResizeMode$ NoResize=�.��� .+��� -    ��Name$ Title��$ ��Create Fake Github Commits��$��55(�$��
Collegiate)�$��70��$	��538��$��Center=�$��128,188,128,613q��� $��GitHub-Mark.png��$	��200��$	��200��$	��Top=�$��Center=��� -   $ Repo_Link_Input��$$��Enter Github Repository Link:*��$��48��$	��325��$��30(����	#FF24303C$��
Collegiate)�$��Center=�$��	0,0,0,290q��� -    ��Name$ 	Repo_Link��$��46��$	��534��$��33(�$��	0,0,0,200q��� -   $ Folder_Name_Label��$1��+Enter a Folder Name for the commit Folder:*��$��48��$	��470��$��30(����	#FF24303C$��
Collegiate)�$��Center=�$��0,0,0,70q��� -   $ Folder_Name��$��46�� �� TextWrapping$
 Wrap=�$	��534��$��30(�$��	0,0,0,-20q��� -   $ Max_commits_Label��$'��!Enter maximum 
commits per day:*��$��85��$	��200��$��30(����	#FF24303C$��
Collegiate)�$��0,0,295,-150q��� -   $ Max_commits��$��46��$
 Wrap=�$�� ��$	��190��$��30(�$��152,557,452,268q��� -   $ 
Days_Label��$(��"Enter Days you 
want to go back:*��$��85��$	��200��$��30(����	#FF24303C$��
Collegiate)�$��0,0,-315,-150q��� -	   $
 Days��$��46��$
 Wrap=�$�� ��$	��182��$��30(�$��456,557,156,268q��� -
   $ File_upload_Label��$?��9Upload an example File with wanted Filetype and content:*��$��45��$	��615��$��30(����	#FF24303C$��
Collegiate)�$��
0,0,0,-430q��� -    ��Name$ File_upload��$��Choose file��$��22(�$��35��$	��200��$��Center=�$��
0,0,0,-525q����	#FF47535F
����������	#FF2C3A47�� -   $ commit_button��$��Start commiting��$	��322��$��39��$��25(�$��
0,0,0,-700q�
����������	#FF47535F