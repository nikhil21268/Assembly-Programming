# Assembly Programming | Operating Systems Assignment
Created an assembly program in C, which takes user-input and prints out the result on the console.

# Problem Statement

## Assembly Program (Total Points: 25)

### Problem Overview
Develop a program in x86-64 assembly language, specifically in 64-bit mode, to accomplish the following tasks:
1. Accept a numerical input and a string input from the user via the console.
2. Display the entered number and string on the user's console.

### Requirements
1. **Input Handling:** Your program should successfully receive a numerical input and a string input from the user through the console.

2. **Output Display:** After taking inputs, the program must correctly print the entered number and string to the user's console.

### Submission Guidelines

#### What To Submit
1. **Source Code:** Provide a single assembly file with the extension .asm or .s that contains your program.

2. **Makefile:** Include a Makefile that facilitates the building of the assembly file into an executable.

#### Grading Rubric
- **Assembly Program (25 Points):**
  - **Program Building (4 Points):** Awarded for the successful compilation of the assembly program.
  - **scanf() Implementation (7 Points):** Awarded for the correct and functional use of scanf() to accept user inputs.
  - **printf() Implementation (7 Points):** Awarded for the correct and functional use of printf() to display the entered number and string.
  - **Program Execution (7 Points):** Awarded for the overall successful execution of the program.

### Additional Notes
- Ensure your assembly program adheres to the x86-64 architecture in 64-bit mode.
- Test your program thoroughly to guarantee correct functionality.
- Consider edge cases in user input to enhance the robustness of your program.
- Follow the provided grading rubric to maximize your score.

## Deployment

To deploy the x86-64 assembly program, follow the steps outlined below:

### Prerequisites

Ensure that you have the following prerequisites installed on your system:

1. **Assembler and Linker:** Install the required assembler and linker tools compatible with x86-64 assembly language. Common choices include NASM (Netwide Assembler) and LD (GNU Linker).

2. **GCC:** A C compiler such as GCC should be available for linking with the C library functions (e.g., scanf, printf).

### Deployment Steps

1. **Save the Assembly Code:**
   Save the provided assembly code in a file with the appropriate extension, such as `your_program.asm`.

2. **Create a Makefile:**
   Include a Makefile to automate the compilation process. Here's a simple example:

   ```make
   all: your_program

   your_program: your_program.asm
       nasm -f elf64 -o your_program.o your_program.asm
       gcc -no-pie -o your_program your_program.o

   clean:
       rm -f your_program your_program.o
   ```

   This Makefile assumes the use of NASM for assembly and GCC for linking. Adjust it based on your toolchain.

3. **Build the Executable:**
   Run the following command in the terminal to build the executable:

   ```bash
   make
   ```

   This will assemble and link the code, creating an executable file named `your_program`.

4. **Run the Executable:**
   Execute the program by running:

   ```bash
   ./your_program
   ```

   The program will prompt you to enter your age and name, and it will display the entered values.

### Cleanup

If needed, clean up the generated files using:

```bash
make clean
```

This removes the compiled executable and object files.

### Note

- Ensure that the assembly code adheres to the x86-64 architecture and follows the specified requirements.
- Test the program with various inputs to ensure correct functionality.
- If issues arise during compilation, review the code and adjust the Makefile accordingly.

Follow these deployment steps to successfully compile, link, and run the x86-64 assembly program on your system.

