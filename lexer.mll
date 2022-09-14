{
  open Parser
}

rule token = parse
| _ { TOKEN }
| eof { EOF }
