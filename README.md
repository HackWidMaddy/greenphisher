# GreensPhisher

> A comprehensive phishing framework for penetration testing and security research | **Educational Purposes Only**

![License](https://img.shields.io/badge/License-MIT-blue.svg)
![Platform](https://img.shields.io/badge/Platform-Linux-orange.svg)
![Language](https://img.shields.io/badge/Language-Bash-green.svg)
![Status](https://img.shields.io/badge/Status-Active-success.svg)

---

## ⚠️ **DISCLAIMER**

This tool is designed **exclusively for authorized security testing, penetration testing, and educational purposes** in controlled environments. Unauthorized access to computer systems is illegal under laws such as the Computer Fraud and Abuse Act (CFAA) and equivalent legislation worldwide.

**Usage of this tool against systems without explicit written authorization is strictly prohibited.**

---

## 📋 Overview

GreensPhisher is an automated bash-based phishing framework designed for ethical hackers, penetration testers, and security researchers to simulate social engineering attacks during authorized security assessments. The framework streamlines the deployment of phishing pages using ngrok for URL tunneling and provides a modular architecture for multiple social media platforms.

### Key Features

- **Multi-Platform Support**: Pre-configured phishing pages for Instagram, LinkedIn, Facebook, and Netflix
- **Automated Deployment**: One-command setup using ngrok for instant HTTPS tunneling
- **HTTP Server Integration**: Built-in Python3 HTTP server for hosting phishing pages
- **Color-Coded UI**: User-friendly terminal interface with intuitive navigation
- **Dependency Management**: Automatic detection and installation of required tools
- **Process Management**: Quick kill switch for cleanup of all active web servers and tunnels

---

## 🔧 Prerequisites

Before running GreensPhisher, ensure your system meets the following requirements:

- **OS**: Linux (Debian/Ubuntu based systems recommended)
- **Bash**: Version 4.0+
- **Python**: Python 3.6 or higher
- **Network Access**: Stable internet connection for ngrok tunnel
- **Permissions**: Sudo access for package installation
- **Tools Required**:
  - `wget` - For downloading dependencies
  - `unzip` - For extracting files
  - `curl` - For API requests

---

## 📦 Installation

### Step 1: Clone the Repository

```bash
git clone https://github.com/yourusername/GreensPhisher.git
cd GreensPhisher
```

### Step 2: Make the Script Executable

```bash
chmod +x greensphisher.sh
```

### Step 3: Run the Script

```bash
./greensphisher.sh
```

The script will automatically:
- Detect and install dependencies (ngrok, unzip, Python3.6)
- Download ngrok from the official Equinox distribution
- Extract necessary files
- Present the main menu

---

## 🚀 Usage

### Basic Execution

```bash
./greensphisher.sh
```

### Main Menu Options

Upon execution, you'll be presented with the following options:

| Option | Description |
|--------|-------------|
| **1** | Deploy Instagram phishing page |
| **2** | Deploy LinkedIn phishing page |
| **3** | Deploy Facebook phishing page |
| **4** | Deploy Netflix phishing page |
| **99** | Terminate all active ngrok tunnels and web servers |
| **00** | Exit the application |

### Example Workflow

```
1. Select option (1-4) for desired platform
2. Framework initializes target phishing page
3. ngrok tunnel launches on port 4444
4. Public HTTPS URL is generated and displayed
5. Phishing page hosted on HTTP server
6. Credentials captured in respective directory logs
```

---

## 📁 Directory Structure

```
GreensPhisher/
├── README.md
├── greensphisher.sh
├── phishingpages/
│   ├── instagram/
│   │   ├── index.html
│   │   └── logs/
│   ├── linkedin/
│   │   ├── index.html
│   │   └── logs/
│   ├── facebook/
│   │   ├── index.html
│   │   └── logs/
│   └── netflix/
│       ├── index.html
│       └── logs/
└── ngrok (auto-downloaded)
```

---

## 🛠️ Technical Architecture

### Component Overview

**Ngrok Integration**: Provides secure HTTPS tunneling for localhost services, bypassing firewall restrictions and enabling external access to the phishing infrastructure.

**Python HTTP Server**: Lightweight web server instance serving phishing page content on port 4444, offering minimal resource overhead and rapid deployment.

**Process Management**: Implements background process spawning with proper signal handling for graceful cleanup and resource release.

**Color-Coded Output**: Terminal UI leverages ANSI color codes for enhanced readability and visual feedback during operation.

### Workflow Diagram

```
User Input → Platform Selection → Directory Navigation
    ↓
Dependency Check → ngrok Tunnel Initialization → URL Extraction
    ↓
HTTP Server Launch (Port 4444) → Public URL Display
    ↓
Credential Capture → Logging to Platform Directory
```

---

## 🔐 Security Considerations

### For Authorized Testers

- **Always obtain written authorization** before deploying this tool
- **Use in isolated lab environments** before field deployment
- **Log all activities** for compliance and audit purposes
- **Document all URLs** generated for post-assessment cleanup
- **Use VPN/proxies** to mask your testing source IP when appropriate

### Ethical Guidelines

1. **Scope Definition**: Clearly define the scope and objectives with stakeholders
2. **Consent**: Ensure explicit, written consent from system owners
3. **Timeline**: Execute tests within agreed time windows
4. **Documentation**: Maintain comprehensive records of all activities
5. **Reporting**: Deliver detailed findings with remediation recommendations
6. **Cleanup**: Remove all traces of phishing infrastructure post-assessment

---

## 🧹 Cleanup

### Automatic Cleanup

To terminate all active processes and tunnels, select option **99** from the main menu:

```bash
# This will execute:
killall ngrok
sudo pkill -9 python
```

### Manual Cleanup

```bash
# Kill ngrok tunnels
killall ngrok

# Kill Python HTTP servers
sudo pkill -9 python

# Remove logs and temporary files
rm -rf phishingpages/*/logs/*
```

---

## 🐛 Troubleshooting

### Issue: ngrok command not found

**Solution**: Reinstall ngrok manually:
```bash
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
chmod +x ngrok
```

### Issue: Port 4444 already in use

**Solution**: Kill existing processes and try again:
```bash
sudo lsof -i :4444
sudo kill -9 <PID>
```

### Issue: Permission denied errors

**Solution**: Grant execute permissions:
```bash
chmod +x greensphisher.sh
sudo chmod +x ngrok
```

### Issue: ngrok tunnel fails to initialize

**Solution**: Check your internet connection and ngrok account status:
```bash
./ngrok http 4444  # Test manually
```

---

## 📊 Performance Metrics

| Metric | Value |
|--------|-------|
| Startup Time | ~5-7 seconds |
| Tunnel Initialization | ~3 seconds |
| Memory Footprint | ~50-80 MB |
| Supported Platforms | 4 |
| Concurrent Sessions | 1 (extendable) |

---

## 🔄 Updating Dependencies

```bash
# Update system packages
sudo apt-get update
sudo apt-get upgrade

# Reinstall Python
sudo apt-get install python3.6

# Update ngrok to latest version
./greensphisher.sh  # Auto-update on first run
```

---

## 📚 Educational Resources

To understand phishing attacks and defense mechanisms:

- [OWASP Social Engineering Guide](https://owasp.org/www-community/attacks/Social_Engineering)
- [NIST Phishing Prevention Guidelines](https://csrc.nist.gov/)
- [CIS Controls for Social Engineering](https://www.cisecurity.org/)
- [SANS Security Training](https://www.sans.org/)

---

## 🤝 Contributing

Contributions are welcome! Please ensure:

1. **Code Quality**: Follow bash best practices
2. **Documentation**: Update README for new features
3. **Testing**: Test on clean Ubuntu/Debian systems
4. **Security**: Never commit sensitive data or credentials
5. **Ethics**: Maintain educational focus in contributions

### Pull Request Process

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/enhancement`)
3. Commit changes (`git commit -m 'Add new feature'`)
4. Push to branch (`git push origin feature/enhancement`)
5. Submit Pull Request with detailed description

---

## 📝 License

This project is licensed under the **MIT License** - see the LICENSE file for details.

**Note**: You are responsible for complying with all applicable laws and regulations in your jurisdiction.

---

## 👨‍💻 Author

**Madhav Shah**

- 🎓 BTech Computer Engineering, SPIT
- 🏆 NASA Hall of Fame, WHO/LG Recognition
- 🎯 Top 2% on TryHackMe
- 📧 madhav.shah24@spit.ac.in
- 🌐 [HackWidMaddy Community](https://hackwidmaddy.com)

---

## ⚖️ Legal Notice

**This software is provided "AS IS" without warranty of any kind.** The author assumes no responsibility for misuse or damage caused by this tool. Users are solely responsible for ensuring their usage complies with all applicable laws and regulations.

**Unauthorized access to computer systems is illegal. Use this tool only on systems you own or have explicit permission to test.**

---

## 🔗 Related Projects

- [Social Engineering Toolkit (SET)](https://github.com/trustedsec/social-engineer-toolkit)
- [Evilginx2](https://github.com/kgretzky/evilginx2)
- [Gophish](https://getgophish.com/)

---

## 📞 Support

For issues, questions, or contributions:

- **GitHub Issues**: [Report a bug](https://github.com/yourusername/GreensPhisher/issues)
- **Email**: madhav.shah24@spit.ac.in
- **Documentation**: Refer to inline code comments

---

**Last Updated**: November 2025

**Status**: Actively Maintained

---

> *"With great power comes great responsibility." - Use this tool ethically and legally.*
