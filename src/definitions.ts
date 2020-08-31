declare module '@capacitor/core' {
  interface PluginRegistry {
    Pay: PayPlugin;
  }
}

export interface PayPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
