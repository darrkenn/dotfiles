export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="eastwood"

plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
  zoxide
)

source $ZSH/oh-my-zsh.sh

alias vos="vncviewer localhost:0"
alias buildiso="
rm -f isodir/myos.iso &&
i686-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra &&
i686-elf-gcc -c lib/lib.c -o lib.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra &&
i686-elf-as boot.s -o boot.o &&
i686-elf-gcc -T linker.ld -o isodir/boot/myos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o lib.o -lgcc &&
grub-mkrescue -o isodir/myos.iso isodir &&
qemu-system-i386 -cdrom isodir/myos.iso
"

export PATH="$HOME/go/bin/:$PATH"
export PATH="$HOME/opt/cross/bin:$PATH"
export PREFIX="$HOME/opt/cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

