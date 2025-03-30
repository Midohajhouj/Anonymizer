
# Anonymizer

An advanced, system-wide anonymization tool that combines Tor, VPN, anti-forensics, network hardening, and cutting-edge obfuscation techniques for a seamless, secure online experience.

## 🚀 Features

- **Multi-layered Anonymity**: Chain Tor and VPN for enhanced privacy.
- **Configurable Kill Switch**: Protect your data with adjustable security levels.
- **Pluggable Transport Support**: Use obfs4, meek, or snowflake for traffic obfuscation.
- **Network Namespace Isolation**: Separate traffic by isolating network namespaces.
- **RAM Disk for Ephemeral Storage**: Secure temporary storage that is erased on reboot.
- **MAC Address Spoofing**: Mask your device’s MAC address for additional privacy.
- **DNS Leak Protection**: Prevent DNS leaks to ensure anonymity.
- **IPv6 Protection**: Automatically blocks IPv6 traffic to avoid exposing real IP.
- **Traffic Obfuscation**: Conceal your traffic to blend with normal data flows.
- **Decoy Traffic Generation**: Generate fake traffic to further obscure your identity.
- **Hardware Anonymization**: Mask or change hardware identifiers (e.g., HDD serial, MAC).
- **Stealth Mode**: Hide kernel modules to remain undetected by adversaries.
- **Automatic Circuit Rotation**: Regularly rotate Tor circuits for improved security.
- **Leak Monitoring**: Continuously monitor for potential data leaks.
- **Qubes OS Integration**: Works seamlessly with Qubes OS for compartmentalized security.
- **Blockchain Identity**: Implement decentralized identity management using blockchain.

## 🛠️ Installation

### Step 1: Clone the repository
```bash
git clone https://github.com/Midohajhouj/Anonymizer.git
cd Anonymizer
```

### Step 2: Install dependencies and tools
```bash
sudo ./install.sh
```

### Step 3: Start the tool
```bash
sudo anonymizer start    # Start anonymization and protection
sudo anonymizer menu     # Launch interactive menu for configuration
```

## ⚙️ Usage

### Command Line Options:

- `start`: Begin the anonymization process.
- `stop`: Halt all anonymization services.
- `restart`: Restart the anonymization services.
- `status`: Display the current status of anonymization.
- `menu`: Launch an interactive menu to manage settings.

### Configuration:

To customize settings, edit `/etc/anonymizer.conf`. Available profiles:

- **Standard**: Basic anonymization setup.
- **High Security**: Enhanced privacy features.
- **Maximum Anonymity**: Full, advanced anonymization.
- **Custom**: Tailor your configuration to your specific needs.

## 📦 Dependencies

- `tor`
- `iptables`
- `iproute2`
- `curl`
- `openssl`
- `systemd`
- `openvpn` (Optional, for VPN support)
- `obfs4proxy` (Optional, for obfuscation)
- `dnscrypt-proxy` (Optional, for DNS leak protection)

## 📜 License

This project is licensed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

---

#### **Coded by [LIONMAD](https://github.com/Midohajhouj)**
