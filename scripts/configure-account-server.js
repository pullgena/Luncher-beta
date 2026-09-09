const fs = require('fs');
const path = require('path');
const root = path.join(__dirname, '..');
const target = path.join(root, 'src', 'account-server.json');
const envValue = String(process.env.EASYCRAFT_ACCOUNT_SERVER_URL || '').trim();
let existing = '';
try { existing = String(JSON.parse(fs.readFileSync(target, 'utf8')).baseUrl || '').trim(); } catch {}
const value = envValue || existing;
if (!value) {
  console.error('EasyCraft account server URL is missing. Run SET_WEIRD_HOST_SERVER.bat first or set EASYCRAFT_ACCOUNT_SERVER_URL.');
  process.exit(1);
}
let u;
try { u = new URL(value); } catch { console.error('Invalid EasyCraft account server URL.'); process.exit(1); }
if (!['http:', 'https:'].includes(u.protocol)) {
  console.error('EasyCraft account server URL must start with http:// or https://.');
  process.exit(1);
}
const normalized = value.replace(/\/+$/, '');
fs.writeFileSync(target, JSON.stringify({ baseUrl: normalized, protocol: 'easycraft-account-v2-srp' }, null, 2) + '\n');
console.log(`EasyCraft account server configured: ${normalized}`);
