   M S B A M L   `   `   `  ����G  CAnnaCherchel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:AnnaCherchel.Tables.AdminAnnaCherchel.Tables.Admin  5      ,    &AnnaCherchel.Tables.Admin.DocCompAdmin   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:AnnaCherchel.Tables.Admin     5        N� Title$  DocCompAdmin��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��50 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5        $��DGridApteca��5         AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Тип документа��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 6U   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6<   �� *Type+6U     5      $ 
Номер��6%   $
 auto 6O    64   �� *Number+6O     5      $ Индекс��6%   $
 auto 6S    65   �� *	Index_doc+6S     5      $ Дата��6%   $ * 6L    63   �� *Date+6L     5      $) #Количество страниц��6%   $
 auto 6[    6A   �� *Pages+6[     5      $# Дата хранения(с)��6%   $ * 6^    6?   �� *
Date_start+6^     5      $% Дата хранения(по)��6%   $ * 6]    6@   �� *
Date_end+6]   4  .System.Windows.Controls.DataGridTemplateColumn  5      $	 285 6)      CellTemplate 5      �� 5      .R�5      �� $��BtnEdit��6S   -   5        $ ��Редактировать��5   %   6S   5      5      5!      �� 5"   
   	 �� Orientation$	 
Horizontal=�6   $��1��6/   $��Center=�6=   $��Center=�6Z   .+�5#      o� .@�5$      �� $��Поиск:��6   �� 5%      -   5        $��TBoxSearch1��5%   2   $	��400��6   $��35��6&   $��22(�6l   $��DemiBold"�6z   5&      5'      �� 5(   
   -   5        $��BtnAdd��5(      $��Добавить��64   $��1��6G   $
��Left=�6T   $	��300��6o   
�������
�������$��32(�6�   $��DemiBold"�6�   ���	#FF3E4D536�   ]� 5)   
   $��1��6   $��Right=�6!   .+�5*      �� -   5        $��BtnDel��5*      $��Удалить��68   $	��150��6K   $��0 0 10 0q�6W   
�������
�������$��32(�6�   $��DemiBold"�6�   ���	#FF7827276�   �� 5+      -   5        $��BtnForm��5+      $��
Отчет��6:   $	��150��6J   
�������
�������$��32(�6}   $��DemiBold"�6�   5,      5-      5.      