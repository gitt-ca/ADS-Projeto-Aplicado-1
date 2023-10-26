package gui;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class HealthFamilyCenterApp {
    private JFrame frame;
    private JPanel menuPanel;
    private JPanel agendaPanel;

    public HealthFamilyCenterApp() {
        frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);
        frame.setLayout(new BorderLayout());

        createMenuPanel();
        createAgendaPanel();

        frame.add(menuPanel, BorderLayout.WEST);
        frame.add(agendaPanel, BorderLayout.CENTER);

        frame.setVisible(true);
    }

    private void createMenuPanel() {
        menuPanel = new JPanel();
        menuPanel.setLayout(new BoxLayout(menuPanel, BoxLayout.PAGE_AXIS));
        menuPanel.setPreferredSize(new Dimension(200, 600));
        menuPanel.setBackground(new Color(51, 153, 255)); // Azul

        JButton button1 = new JButton("Opção 1");
        JButton button2 = new JButton("Opção 2");

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

        menuPanel.add(Box.createRigidArea(new Dimension(0, 20))); // Espaçamento
        menuPanel.add(button1);
        menuPanel.add(button2);
    }

    private void createAgendaPanel() {
        agendaPanel = new JPanel(new BorderLayout());
        agendaPanel.setBackground(Color.WHITE);

        JLabel centerLabel = new JLabel("HealthFamilyCenter");
        centerLabel.setHorizontalAlignment(JLabel.CENTER);
        centerLabel.setFont(new Font("Arial", Font.BOLD, 24));
        agendaPanel.add(centerLabel, BorderLayout.CENTER);
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
