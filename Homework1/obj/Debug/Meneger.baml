   M S B A M L   `   `   `  ����D  @Homework1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Homework1	Homework1  5   	       Homework1.Meneger   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Homework1     5   	     � Title$  Meneger��5   	   $	��450��6   $	��600��6&   .��5	      � $	��419��6   $��Bottom=�6    � ColumnDefinitions 5
   
   �� 5      $	��250 �6   5      �� 5      .+�5   
   �� $	��200��6   $	��Top=�6   $��20q�65   $��manager.png��6A   5      �� 5   
   $��40��6   $	��100��6   $��Менеджер��6(   $��18(�6;   $��20,239,130,140q�6I   5      �� 5   
   -   5         ��Name$ NameMenegar��5   G   $��40��6   $	��100��6   $��login1��6(   $��18(�69   $��130,239,20,140q�6\    J� RenderTransformOrigin$ 
0.76,0.764&�6t   5      �� 5   
   $��Заказы��6   $��1��6!   $��40��61   $��19(�6=   $��80��6K   $
��Left=�6V   
��� � �$	��Top=�6�   $��10q�6�   $��Segoe UI Semibold)�6�   5      &   System.Windows.Controls.DataGrid  5   
   $��1��6   $��	0,55,0,87q�6#      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Number��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   ��  �� Path$ Number�6W     5       $
 Name��6%    63   �� $
 Name�6S     5!      $ Amount��6%    65   �� $ Amount�6W     5"      $ Price��6%    64   �� $ Price�6U   5&      �� 5(   
   -   5        $,��&Оформить новый заказ��5(      $��50��60   $��18(�6<   
���  ��$��1��6[   $��Bottom=�6k   $��10q�6�      ButtonStyle#��[  6�   
�������5*      5+      5,      