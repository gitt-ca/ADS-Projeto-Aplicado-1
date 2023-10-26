package gui;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ImageIcon;

public class Tela {
    private JFrame frame;
    private JPanel mainPanel;
    private JPanel menuPanel;
    private JButton button1;
    private JButton button2;

    public Tela() {
        frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(800, 600);
        frame.getContentPane().setLayout(new BorderLayout());

        createMenuPanel();
        createMainPanel();
        addHealthImage();
        frame.getContentPane().add(mainPanel, BorderLayout.CENTER);
        menuPanel = new JPanel();
        mainPanel.add(menuPanel, BorderLayout.WEST);
        menuPanel.setLayout(new BoxLayout(menuPanel, BoxLayout.Y_AXIS));
        menuPanel.setBackground(new Color(101, 153, 255)); // Azul
        
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
                                
                                        menuPanel.add(Box.createRigidArea(new Dimension(0, 20))); // Espaçamento
                                        menuPanel.add(button1);
                                        menuPanel.add(button2);

        frame.setVisible(true);
    }

    private void createMenuPanel() {
    }

    private void createMainPanel() {
        mainPanel = new JPanel();
        mainPanel.setLayout(new BorderLayout());

        JLabel titleLabel = new JLabel("HealthFamilyCenter");
        titleLabel.setFont(new Font("Arial", Font.BOLD, 24));
        titleLabel.setHorizontalAlignment(JLabel.CENTER);

        mainPanel.add(titleLabel, BorderLayout.NORTH);
    }

    private void addHealthImage() {
        ImageIcon healthImage = new ImageIcon("health_icon.png"); // Insira o caminho da imagem
        JLabel imageLabel = new JLabel(healthImage);
        mainPanel.add(imageLabel, BorderLayout.EAST);
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                new Tela();
            }
        });
    }
}
