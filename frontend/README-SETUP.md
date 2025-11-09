# Frontend Setup Guide

## Issue: pnpm EACCES Error

The error `spawnSync pnpm EACCES` occurs because pnpm is not properly installed or doesn't have execute permissions.

## Solutions (Choose One)

### Solution 1: Install pnpm properly (Recommended)

Run the setup script:
```bash
chmod +x setup-pnpm.sh
./setup-pnpm.sh
```

Or manually install pnpm:
```bash
# Option A: Using corepack (Node.js 16.13+)
corepack enable
corepack prepare pnpm@latest --activate

# Option B: Using npm
npm install -g pnpm

# Option C: Using official installer
curl -fsSL https://get.pnpm.io/install.sh | sh
```

### Solution 2: Use npm instead of pnpm

If pnpm installation fails, you can use npm:

1. Delete the pnpm lock file:
```bash
rm pnpm-lock.yaml
```

2. Install dependencies with npm:
```bash
npm install
```

3. Use npm commands instead of pnpm:
```bash
npm run build    # instead of pnpm run build
npm run dev      # instead of pnpm run dev
npm run preview  # instead of pnpm run preview
```

### Solution 3: Fix permissions (if pnpm file exists but isn't executable)

```bash
chmod +x /usr/local/bin/pnpm
# OR
chmod +x $(which pnpm)
```

## Verification

After fixing, verify that pnpm works:
```bash
pnpm --version
pnpm install
pnpm run build
```

## Your Hello World App

The React application includes:
- ✅ Responsive "Hello World" page
- ✅ Dark/light theme support  
- ✅ Modern gradient background
- ✅ Animated elements
- ✅ Proper TypeScript setup

Once pnpm is working, you can:
- `pnpm run dev` - Start development server
- `pnpm run build` - Build for production
- `pnpm run preview` - Preview production build