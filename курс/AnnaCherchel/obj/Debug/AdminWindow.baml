   M S B A M L   `   `   `  ����G  CAnnaCherchel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:AnnaCherchelAnnaCherchel  5   	       AnnaCherchel.AdminWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:AnnaCherchel     5   	     � Title$  Archive��5   	   $	��450��6   $	��800��6&    � WindowState$ 	Maximized=�62    � 
ResizeMode$ NoResize=�6J   .��5	      � ��5
   
   �� 5       j� TileMode$
 None=�6    j� Stretch$
 Fill=�6)    �� ImageSource$ Resources/fonnn.jpg��68    � ColumnDefinitions 5   
   �� 5      $
��27.9 �6   �� 5      $	��9.6 �6   �� 5      $	��1.2 �6   �� 5      $	��3.6 �6   �� 5      $	��1.2 �6   �� 5      $��226.5 �6   �� 5      $��* �6   .+�5   
   � $��0��6   ���	#FF2E2E2E J� Opacity$	 0.8Q�63   $��6��6A    5      �� 5      $	��44* �6#   �� 5      $	��92* �6#   �� 5      $
��135* �6#    � RowDefinitions 5      �� 5      $��* �6    �� 5      $��* �6    �� 5      $��* �6    �� 5       $��* �6    .+�5"      �� -   5        $	��Doc��5"      ���	#FF494848
�������$��Actual documents��6J   $��0��6w   $��50��6�   $	��270��6�   $��20(�6�   $��DemiBold"�6�   $��Center=�6�   $
��Left=�6�   $��Sitka Heading)�6�   $��3��6  �� 5#      -   5        $
��Doc2��5#      ���	#FF494848
�������$��Typewritten documents��6K   $��1��6~   $��0��6�   $��50��6�   $	��270��6�   $��20(�6�   $��DemiBold"�6�   $��Center=�6�   $
��Left=�6�   $��Sitka Heading)�6  $��3��6)  �� 5$      -   5        $
��Exit��5$      ���	#FF494848
�������$
��Exit��6K   $��3��6m   $��0��6z   $��50��6�   $	��270��6�   $��20(�6�   $��DemiBold"�6�   $��Center=�6�   $
��Left=�6�   $��Sitka Heading)�6�   $��3��6  5%       � 5'   
   -   5        	  �Name$	 	MainFrame��5'      $	 0.7Q�6#   
���   �$	��2.5q�6E   
  � NavigationUIVisibility$
 Hidden=�6[   $��6��6{   
���   �6�   5(      5)      