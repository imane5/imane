   M S B A M L   `   `   `  ����C  ?Students, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:StudentsStudents  5          Students.Modifier   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:Students     5      k gTelerik.Windows.Controls.Input, Version=2018.1.122.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7a ]Telerik.Windows.Data, Version=2018.1.122.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7j fTelerik.Windows.Controls.Data, Version=2018.1.122.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7e aTelerik.Windows.Controls, Version=2018.1.122.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7n	 jTelerik.Windows.Controls.GridView, Version=2018.1.122.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7k
 gTelerik.Windows.Controls.Chart, Version=2018.1.122.45, Culture=neutral, PublicKeyToken=5803cfa389c90ce7Itelerik1http://schemas.telerik.com/2008/xaml/presentation     	 
 5      $��1519.589��5      ���	#FFE6E6E6$��503.868��6H   
�������.��5
      � -   5        $��gridMain��5
   H   $��27,27,29,29q�6   
�������  � 	Resources  5   
   0  *Telerik.Windows.Controls.DataFormDataField �� 
TargetType �� Triggers P� Property P� Value �� Property �� Value �� Self �� RelativeSource	 �� Path   
MyTemplate
 � ColumnDefinitions � RowDefinitions   Label   DataMemberBinding �� Mode �� ValidatesOnDataErrors0  *Telerik.Windows.Controls.DataFormDateField4  .Telerik.Windows.Controls.DataFormComboBoxField �� SelectedIndex �� 
IsEditable��%�  '        &	  �     �� 5      "  6    5      P� 5       �@=�HasError . . �5      ��  �@�ToolTip 64   �� # Z $2	 ,(Validation.Errors).CurrentItem.ErrorContent�5      5      �� 5      .R�5      � 
 5      �� 5      $��* �6+   �� 5      $��0* �6+    5      �� 5      $��5* �6(   �� 5      $��4* �6(   �� 5      $��0* �6(   �� 5      $��0* �6(   �� 5      $��5* �6(   �� 5      $��4* �6(   �� 5       $��0* �6(   �� 5!      $��0* �6(   �� 5"      $��* �6(   .+�5$        $	��cne��60   $	 Cne��6;    6G   �� $		 cne�$ OneWay=� .   5%      $	��nom��6=   $��1��60   $	 Nom��6H    6T   �� $		 nom�$ OneWay=� .   5&      $��prenom��6=   $��2��60   $ Prenom��6K    6Z   �� $	 prenom�$ OneWay=� .   5'      $��adress��6=   $��3��60   $ Address��6K    6[   �� $	 adresse�$ TwoWay=� .   5(      $��date_naissance��6>   $��4��60   $ Date de naissance��6T    6n   �� $	 
date_naiss�$ TwoWay=�  5)      $
��sexe��6A   $��5��64   $
 Sexe��6M    6Z   �� *sexe+$ TwoWay=���5*      �� 5+      .@�5,   "   �� $ 0��6+    . .@�5-   &   �� ��60   �� *sexe+6I   5.   #   5/      51        52      $
��tele��6=   $��6��60   $ 	Telephone��6I    6[   �� $	 	telephone�$ TwoWay=� .   53        54      $	��fil��6A   $��7��64   $ Filiere��6L    6\   �� $	 Filiere.Nom_filiere�$ TwoWay=���55      �� 56      .@�57   "   �� $ 0��6+    . .@�58   &   �� ��60   �� *Filiere.Nom_filiere+6X   59   #   5:      5<        5>      $��image��6=   $��9��60   $ Image��6J    6X   �� $	 image�$ TwoWay=���5?      �� 5@      $	��img��6K   $
��Fill=�6$   $��50��63   $��50��6>   ��6V   �� *image+5B      5C      5D      5E      .+�5F   
   *  $Telerik.Windows.Controls.RadDataForm  -   5        $��radform��5F      ���	#FFF7F7F7$
��Left=�6E   $��
446,44,0,0q�6`   $	��Top=�6t   $	��281��6�   $	��536��6�      AutoGenerateFields .     ReadOnlyTemplate# [  5G         EditTemplate# [  6�      NewItemTemplate# [  6�      ItemsSource 6@   ��    Students.Lister   lister �� Source# Z  �� ValidatesOnExceptions .  �� NotifyOnValidationError . ��5H      �� 5I       �� EndPoint$ 0.5,1&�6&    � MappingMode$ RelativeToBoundingBox=�67    �� 
StartPoint$ 0.5,0&�6[   .��5J      �  � Color$ 	#FF2A64FF��6#   � 5K      $ 	#FFFFEFEF��6#    � Offset$ 1Q�65   � 5L      $ 	#FF3865E0��6#   � 5M      $ 	#FF699AB6��6#   $ 0.973Q�65   5N      5P      (  "Telerik.Windows.Controls.RadButton  5Q   
   -   5           Name$  uploadButton��5Q      $��Changer Image��62   $
��Left=�6J   $��20��6e   $��718,297,0,0q�6q   $	��Top=�6�   $	��145��6�   6�     5R   
   -   5        $  	radButton��5R      $��Valider modification��6/   $
��Left=�6N   $
��Auto��6i   $��653,344,0,0q�6w   $	��Top=�6�   $	��154��6�   6�   �� 5S   
   -   5        ! ��Name$! label��5S      $-��'Fenêtre de modification des étudiants��6   $
��Left=�6O   $��
571,13,0,0q�6j   $	��Top=�6~   $	��214��6�   �� 5T   
   -   5        $! error��5T      $
��Left=�6    $��102,275,0,0q�6;   $	��Top=�6P   " J� RenderTransformOrigin$" -0.185,1.613&�6h   $	��246��6�   ���	#FFE81111$��34��6�   ��6�   Z� 6�     5U   
   -   5        $  radButton_Copy��5U      $��Retour��64   $
��Left=�6E   $��24��6`   $��
811,13,0,0q�6l   $	��Top=�6�   $	��122��6�   6�   5V      5W      