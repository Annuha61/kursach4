   M S B A M L   `   `   `  ����G  CAnnaCherchel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:AnnaCherchelAnnaCherchel  5   	       AnnaCherchel.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:AnnaCherchel     5   	     � Title$  
Архив��5   	   $	��450��6   $	��800��6$    � Icon$! /Resources/иконка.ico��60    � WindowStyle$
 None=�5	   	    � 
ResizeMode$ NoResize=�5
   	    � WindowStartupLocation$ CenterScreen=�5   	    � 	Resources 5         TextBox.Static.Border �� Color  TextBox.MouseOver.Border  TextBox.Focus.Border �� 
TargetType �� Property	 �� Value-  'System.Windows.Input.KeyboardNavigation
 �� 
TargetType ��Name J� SnapsToDevicePixels ��Name �� Triggers P� Property P� Value �� 
TargetName �� Triggers ]� 
Conditions �� Property �� Value��%�  &	        &	 #     &	 F     '�� i     7   7  7  �� 5   
   $ 	#FFABAdB3��68   �� 5   
   $ 	#FF7EB4EA��6;   �� 5   
   $ 	#FF569DE5��67   �� 5   
   " ��6   .�5      ��  � ��#	 � ��6+   �� 5       � ��8	   6,   �� 5       � ��#	 � ��6+   �� 5       � ��$	 1q�60   �� 5       �@ TabNavigation$
	 None=�6A   �� 5       � ��$
	 Left=�6;   �� 5       �@�FocusVisualStyle	 61   Z� �� 5       �@J�	AllowDrop	 . 6*   �� 5       �@��PanningMode$	 VerticalFirst=�69   �� 5       �@��IsFlicksEnabled	 .  67   �� 5       � ��	 5      �� 5      "
 ��6&   .R�5      �� $ border��6!   #��z��62   #��z��6\   #��z��6�    . ._�5      �� $ PART_ContentHost��6+   |�.  $��Hidden=�6W   $��Hidden=�6~   5        5!      P� 5"       � {� .  . �5#   "   �� $ border��6<    �@J�Opacity$
	 0.56Q�6P   5$      P� 5%       �@J�IsMouseOver . . �5&   "   �� $ border��6@   8	   � ��6T   5'      P� 5(       �@J�IsKeyboardFocused . . �5)   "   �� $ border��6@   8	   � ��6T   5*      5,      5.       5/      ]� 50       51      �� 52      + �@��#IsInactiveSelectionHighlightEnabled . 6S   �� 53       �@��IsSelectionActive .  6A   ./�55      ��  �@��SelectionBrush#	 � /�67   56      58      59      .��5:      � ��5;   
   �� 5<       j� TileMode$
 None=�6    j� Stretch$
 Fill=�6)    �� ImageSource$ Resources/arh.jpg��68    � ColumnDefinitions 5>   
   �� 5?      $��* �6   �� 5@      $��* �6   .+�5B   
   � $��250,50,250,50q�6   $��2��6&   ��5C      �� 5D      $ 	#FF53595C��6"    �� Opacity$	 0.5Q�64    � RowDefinitions 5F      �� 5G      $
��auto �6    �� 5H      $
��auto �6    �� 5I      $
��auto �6    �� 5J      $
��auto �6    �� 5K      $
��auto �6    �� 5L      $
��auto �6    �� 5M      $
��auto �6    �� 5N      $
��auto �6    .+�5P      �� $��Authorization��6   $��0��6-   $��Bottom=�6:   $��Center=�6U   $��48(�6r   $��Imprint MT Shadow)�6�   
�������6�   �� 5Q      $��Login��6   $��48,0,0,0q�6%   $��1��67   $��Center=�6D   $
��Left=�6_   $��18(�6z   $��Sitka Heading)�6�   
�������6�   �� 5R      -   5         ��Name$	 Log��5R   �   $��2��6(   $��Center=�65   $��Center=�6P   $	��205��6m   $��18(�6y   $��25��6�   ���	#FF486CDA6�   �� 5S      $��Password��6   $��48,0,0,0q�6(   $��3��6:   $��Center=�6G   $
��Left=�6b   $��18(�6}   $��Sitka Heading)�6�   
�������6�   G� 5T      -   5         G�Name$
 Pass��5T   �   $��4��6-   $��Center=�6:   $��Center=�6U   $	��205��6r   $��18(�6~   $��25��6�   ���	#FF486CDA���	#FF486CDA6�   �� 5U      $
��Code��6   $��48,0,0,0q�6$   $��5��66   $��Center=�6C   $
��Left=�6^   $��18(�6y   $��Sitka Heading)�6�   
�������6�   ]� 5V      $��6��6   $��Center=�6%   $��Center=�6@   .+�5W      �� -   5        $
 Code��5W   o   $	��180��6   $��18(�6&   $��25��64   ���	#FF486CDA���	#FF486CDA6   �� 5X      -   5         ��Name$ Refresh��5X      $��25��6@   $��25��6L   ���	#FF486CDA.��5Y      �� $��/Resources/strelka.png��6    J� OpacityMask �	#FF83BDF06<   5Z      5[      �� 5\      -   5        $ Login��5\      $��Center=�68   $��Center=�6S   $��7��6p   $��Continue��6}   $��32��6�   $��90��6�   $��18(�6�   $��15q�6�   ���	#FF272D2D���	#FF2F3445
�������$��Sitka Heading)�6  6   5]      5_      5`      