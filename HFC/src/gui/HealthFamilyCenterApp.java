package gui;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class HealthFamilyCenterApp {
    private JFrame frame;
    private JPanel contentPanel;
    private JButton button1;
    private JButton button2;

    public HealthFamilyCenterApp() {
        frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);

        createContentPanel();
        createButtons();

        frame.add(contentPanel, BorderLayout.CENTER);

        frame.setVisible(true);
    }

    private void createContentPanel() {
        contentPanel = new JPanel();
        contentPanel.setLayout(new BorderLayout());

        JLabel titleLabel = new JLabel("HealthFamilyCenter");
        titleLabel.setFont(new Font("Arial", Font.BOLD, 24));
        titleLabel.setHorizontalAlignment(JLabel.CENTER);

        contentPanel.add(titleLabel, BorderLayout.NORTH);
    }

    private void createButtons() {
        JPanel buttonPanel = new JPanel();
        buttonPanel.setLayout(new FlowLayout(FlowLayout.CENTER, 20, 20));

        button1 = new JButton("Opção 1");
        button2 = new JButton("Opção 2");

        button1.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Ação para a Opção 1
            }
        });

        button2.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Ação para a Opção 2
            }
        });

        buttonPanel.add(button1);
        buttonPanel.add(button2);

        contentPanel.add(buttonPanel, BorderLayout.CENTER);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                new HealthFamilyCenterApp();
            }
        });
    }
}
