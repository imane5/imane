   M S B A M L   `   `   `  ����C  ?Students, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:StudentsStudents  5          Students.Lister   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:Students     5      k gTelerik.Windows.Controls.Input, Version=2018.1.122.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2018.1.122.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j fTelerik.Windows.Controls.Data, Version=2018.1.122.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2018.1.122.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n	 jTelerik.Windows.Controls.GridView, Version=2018.1.122.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k
 gTelerik.Windows.Controls.Chart, Version=2018.1.122.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Itelerik1http://schemas.telerik.com/2008/xaml/presentation     	 
 5      $��503.868��5      $��1519.589��60   
�������.��5
      � -   5          �Name$  gridMain��5
   5   $��27,27,29,29q�6   
������� � ColumnDefinitions 5   
   �� 5       � RowDefinitions 5   
   �� 5      .+�5   
   * 	 $Telerik.Windows.Controls.RadGridView  -   5          Name$ GridData��5      $
��Left=�60   $��
442,49,0,0q�6K   ; 	 5Telerik.Windows.Controls.GridView.GridViewDataControl   AutoGenerateColumns .  $	��Top=�6|   $	��577��6�   $	��314��6�   *  $Telerik.Windows.Controls.DataControl   ItemsSource 6�   ��    Students.ListerFiliers   MyItems �� Source# Z    Columns 5      2 	 ,Telerik.Windows.Controls.GridViewImageColumn  5      - 	 'Telerik.Windows.Controls.GridViewColumn	   Width? 	 9Telerik.Windows.Controls.GridView.GridViewLengthConverter$	 50 6e   
   ImageHeight$
 50Q�6p   6 	 0Telerik.Windows.Controls.GridViewBoundColumnBase   DataMemberBinding 6.   ��  �� Path$ image� �� Mode$ OneWay=�6p   1	 	 +Telerik.Windows.Controls.GridViewDataColumn	  5       6-   �� $	 cne�$ OneWay=�	  5       6-   �� $	 nom�$ OneWay=�	  5       6-   �� $ prenom�$ OneWay=�	  5       6-   �� $
 sexe�$ OneWay=�	  5       6-   �� $ 
date_naiss�$ OneWay=�	  5       6-   �� $ adresse�$ OneWay=�	  5       6-   �� $ 	telephone�$ OneWay=�	  5       6-   �� $ Filiere.Nom_filiere�$ OneWay=�5      *
  $Telerik.Windows.Controls.RadComboBox
  5   
   -   5         
 Name$ search��5       
  
IsEditable .   �� DisplayMemberPath$ Nom_filiere��6B   $
��Left=�6�   $��
10,102,0,0q�6�   $	��Top=�6�   $	��218��6�   $��22��6  ��6b   ��    ListeFilieres# Z 5       �� 5"   
   -   5         ��Name$ label��5"      $��Rechercher par Filière :��6   $
��Left=�6B   $��	10,60,0,0q�6]   $	��Top=�6p   $��26��6�   $	��130��6�   ���	#FFBBCBDE6�   (  "Telerik.Windows.Controls.RadButton  5#   
   -   5          Name$ 	radButton��5#      $��Modifier��6/   $
��Left=�6B   $��36��6]   $��601,396,0,0q�6i   $	��Top=�6~   $	��135��6�   6�   $  Telerik.Windows.Controls.Label  5$   
   -   5          Name$ infosup��5$      $�� ��6)   $
��Left=�64   $��
10,150,0,0q�6O   $	��Top=�6c   $	��226��6{   $	��237��6�     5%   
   -   5        $ titre��5%      $
��Left=�6�   $��	511,3,0,0q�6�   $	��Top=�6�   $��34��6�   $	��369��6�   ��6'   ��  �� ElementName$ search��$
 Text�$ OneWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�     5&   
   -   5        $ 
radButton1��5&      $��Refresh��60   $
��Left=�6B   $��36��6]   $��753,396,0,0q�6i   $	��Top=�6~   $	��127��6�   6�   5(      5)      