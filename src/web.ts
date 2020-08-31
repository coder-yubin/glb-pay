import { WebPlugin } from '@capacitor/core';
import { PayPlugin } from './definitions';

export class PayWeb extends WebPlugin implements PayPlugin {
  constructor() {
    super({
      name: 'Pay',
      platforms: ['web'],
    });
  }

  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}

const Pay = new PayWeb();

export { Pay };

import { registerWebPlugin } from '@capacitor/core';
registerWebPlugin(Pay);
