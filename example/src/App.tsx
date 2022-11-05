import * as React from 'react';

import { Button, StyleSheet, View } from 'react-native';
import { showAdPieVideoAds } from 'react-native-ad-pie';

export default function App() {
  return (
    <View style={styles.container}>
      <Button
        color="red"
        title="Show Ads"
        onPress={() => {
          showAdPieVideoAds({
            slotId: '61de726d65a17f71c7896827',
          });
        }}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
