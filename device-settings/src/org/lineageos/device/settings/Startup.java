/*
 * Copyright (C) 2018-2023 crDroid Android Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */

package org.lineageos.device.settings;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;

import org.lineageos.device.settings.utils.FileUtils;

public class Startup extends BroadcastReceiver {

    private static final String TAG = Startup.class.getSimpleName();

    // Use string directly so we do NOT depend on lineage-sdk
    private static final String ACTION_INITIALIZE_LINEAGE_HARDWARE =
            "lineageos.intent.action.INITIALIZE_LINEAGE_HARDWARE";

    @Override
    public void onReceive(Context context, Intent intent) {
        final String action = intent.getAction();

        if (ACTION_INITIALIZE_LINEAGE_HARDWARE.equals(action)
                || Intent.ACTION_BOOT_COMPLETED.equals(action)
                || Intent.ACTION_LOCKED_BOOT_COMPLETED.equals(action)) {

            DeviceSettings.restoreSliderStates(context);
            // DeviceSettings.restoreFastChargeSetting(context);
        }
    }
}
