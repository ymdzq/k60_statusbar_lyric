.class public abstract Lcom/android/wifitrackerlib/Utils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lcom/android/wifitrackerlib/Utils$$ExternalSyntheticLambda0;

    .line 10
    invoke-direct {v0}, Lcom/android/wifitrackerlib/Utils$$ExternalSyntheticLambda0;-><init>()V

    .line 12
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 15
    move-result-object v0

    .line 18
    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    check-cast p0, Landroid/net/wifi/ScanResult;

    .line 23
    return-object p0
    .line 25
.end method

.method public static getConnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Landroid/net/NetworkCapabilities;ZZLandroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 2
    const v1, 0x7f130cda    # @string/wifitrackerlib_summary_separator ' / '

    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object v2

    .line 10
    invoke-direct {v0, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz p1, :cond_5

    .line 16
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 18
    if-nez v4, :cond_0

    .line 20
    iget-boolean v4, p1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    .line 22
    if-eqz v4, :cond_5

    .line 24
    :cond_0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->getSuggestionOrSpecifierLabel(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    .line 26
    move-result-object v4

    .line 29
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v5

    .line 33
    if-nez v5, :cond_5

    .line 34
    if-nez p3, :cond_4

    .line 36
    if-eqz p2, :cond_3

    .line 38
    const/16 p3, 0x16

    .line 40
    invoke-virtual {p2, p3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 42
    move-result p3

    .line 45
    if-nez p3, :cond_2

    .line 46
    const/16 p3, 0x1a

    .line 48
    invoke-virtual {p2, p3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 50
    move-result p3

    .line 53
    if-eqz p3, :cond_1

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    move p3, v2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    move p3, v3

    .line 59
    :goto_1
    if-eqz p3, :cond_3

    .line 60
    goto :goto_2

    .line 62
    :cond_3
    const p3, 0x7f130cc6    # @string/wifitrackerlib_available_via_app 'Available via %1$s'

    .line 63
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 69
    invoke-virtual {p0, p3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object p3

    .line 73
    invoke-virtual {v0, p3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 74
    goto :goto_3

    .line 77
    :cond_4
    :goto_2
    const p3, 0x7f130cc9    # @string/wifitrackerlib_connected_via_app 'Connected via %1$s'

    .line 78
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 81
    move-result-object v4

    .line 84
    invoke-virtual {p0, p3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object p3

    .line 88
    invoke-virtual {v0, p3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 89
    :goto_3
    move p3, v2

    .line 92
    goto :goto_4

    .line 93
    :cond_5
    move p3, v3

    .line 94
    :goto_4
    if-eqz p4, :cond_6

    .line 95
    const p3, 0x7f130c72    # @string/wifi_connected_low_quality 'Low quality'

    .line 97
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object p3

    .line 103
    invoke-virtual {v0, p3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 104
    move p3, v2

    .line 107
    :cond_6
    if-eqz p2, :cond_d

    .line 108
    const/16 p4, 0x11

    .line 110
    invoke-virtual {p2, p4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 112
    move-result p4

    .line 115
    if-eqz p4, :cond_7

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    move-result-object p1

    .line 121
    const-string/jumbo p2, "string"

    .line 122
    const-string p3, "android"

    .line 125
    const-string p4, "network_available_sign_in"

    .line 127
    invoke-virtual {p1, p4, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    move-result p1

    .line 132
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 136
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 137
    goto :goto_6

    .line 140
    :cond_7
    const/16 p4, 0x18

    .line 141
    invoke-virtual {p2, p4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 143
    move-result p4

    .line 146
    if-eqz p4, :cond_8

    .line 147
    const p1, 0x7f130ce9    # @string/wifitrackerlib_wifi_limited_connection 'Limited connection'

    .line 149
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 155
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 156
    goto :goto_6

    .line 159
    :cond_8
    const/16 p4, 0x10

    .line 160
    invoke-virtual {p2, p4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 162
    move-result p4

    .line 165
    if-nez p4, :cond_d

    .line 166
    if-eqz p1, :cond_9

    .line 168
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isNoInternetAccessExpected()Z

    .line 170
    move-result p1

    .line 173
    if-eqz p1, :cond_9

    .line 174
    goto :goto_5

    .line 176
    :cond_9
    move v3, v2

    .line 177
    :goto_5
    if-nez p5, :cond_a

    .line 178
    if-nez v3, :cond_a

    .line 180
    const p1, 0x7f130cc8    # @string/wifitrackerlib_checking_for_internet_access 'Checking for internet access...'

    .line 182
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 188
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 189
    goto :goto_6

    .line 192
    :cond_a
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    .line 193
    move-result p1

    .line 196
    if-eqz p1, :cond_b

    .line 197
    const p1, 0x7f130cd7    # @string/wifitrackerlib_private_dns_broken 'Private DNS server cannot be accessed'

    .line 199
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 202
    move-result-object p1

    .line 205
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 206
    goto :goto_6

    .line 209
    :cond_b
    if-eqz v3, :cond_c

    .line 210
    const p1, 0x7f130ce3    # @string/wifitrackerlib_wifi_connected_cannot_provide_internet 'Connected to device. Can't provide internet.'

    .line 212
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 218
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 219
    goto :goto_6

    .line 222
    :cond_c
    const p1, 0x7f130cef    # @string/wifitrackerlib_wifi_no_internet 'No internet access'

    .line 223
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 226
    move-result-object p1

    .line 229
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 230
    goto :goto_6

    .line 233
    :cond_d
    move v2, p3

    .line 234
    :goto_6
    if-eqz v2, :cond_e

    .line 235
    new-instance p1, Ljava/util/StringJoiner;

    .line 237
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 239
    move-result-object p2

    .line 242
    invoke-direct {p1, p2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 246
    move-result-object p0

    .line 249
    const p2, 0x7f0300e6    # @array/wifitrackerlib_wifi_status

    .line 250
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 253
    move-result-object p0

    .line 256
    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 257
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    .line 259
    move-result p2

    .line 262
    aget-object p0, p0, p2

    .line 263
    invoke-virtual {p1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 265
    move-result-object p0

    .line 268
    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->merge(Ljava/util/StringJoiner;)Ljava/util/StringJoiner;

    .line 269
    move-result-object p0

    .line 272
    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 273
    move-result-object p0

    .line 276
    return-object p0

    .line 277
    :cond_e
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 278
    move-result-object p0

    .line 281
    return-object p0
    .line 282
.end method

.method public static getConnectingDescription(Landroid/content/Context;Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    if-eqz p0, :cond_3

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 9
    move-result-object p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    return-object v0

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p0

    .line 19
    const v1, 0x7f0300e6    # @array/wifitrackerlib_wifi_status

    .line 20
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    .line 27
    move-result p1

    .line 30
    array-length v1, p0

    .line 31
    if-lt p1, v1, :cond_2

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    aget-object v0, p0, p1

    .line 35
    :cond_3
    :goto_0
    return-object v0
    .line 37
.end method

.method public static getDisconnectedDescription(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;ZZ)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    if-eqz p1, :cond_b

    .line 4
    if-nez p2, :cond_0

    .line 6
    goto/16 :goto_4

    .line 8
    :cond_0
    new-instance v1, Ljava/util/StringJoiner;

    .line 10
    const v2, 0x7f130cda    # @string/wifitrackerlib_summary_separator ' / '

    .line 12
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 19
    if-eqz p4, :cond_1

    .line 22
    const p0, 0x7f130ce8    # @string/wifitrackerlib_wifi_disconnected 'Disconnected'

    .line 24
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    invoke-virtual {v1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 31
    goto :goto_1

    .line 34
    :cond_1
    if-eqz p3, :cond_2

    .line 35
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    .line 37
    move-result p3

    .line 40
    if-nez p3, :cond_2

    .line 41
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mNoAttributionAnnotationPackages:Ljava/util/Set;

    .line 43
    iget-object p3, p2, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 45
    check-cast p0, Landroid/util/ArraySet;

    .line 47
    invoke-virtual {p0, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 49
    move-result p0

    .line 52
    if-nez p0, :cond_4

    .line 53
    iget-object p0, p2, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 55
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 57
    move-result-object p3

    .line 60
    const/4 p4, 0x0

    .line 61
    invoke-virtual {p3, p0, p4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 62
    move-result-object p0

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 66
    move-result-object p3

    .line 69
    invoke-virtual {p0, p3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 70
    move-result-object p0

    .line 73
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 74
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-object p0, v0

    .line 79
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result p3

    .line 83
    if-nez p3, :cond_4

    .line 84
    const p3, 0x7f130cd8    # @string/wifitrackerlib_saved_network 'Saved by %1$s'

    .line 86
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 89
    move-result-object p0

    .line 92
    invoke-virtual {p1, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 96
    invoke-virtual {v1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 97
    goto :goto_1

    .line 100
    :cond_2
    iget-boolean p0, p2, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 101
    if-eqz p0, :cond_3

    .line 103
    invoke-static {p1, p2}, Lcom/android/wifitrackerlib/Utils;->getSuggestionOrSpecifierLabel(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 108
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    move-result p3

    .line 112
    if-nez p3, :cond_4

    .line 113
    const p3, 0x7f130cc6    # @string/wifitrackerlib_available_via_app 'Available via %1$s'

    .line 115
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 118
    move-result-object p0

    .line 121
    invoke-virtual {p1, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    move-result-object p0

    .line 125
    invoke-virtual {v1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 126
    goto :goto_1

    .line 129
    :cond_3
    const p0, 0x7f130cf4    # @string/wifitrackerlib_wifi_remembered 'Saved'

    .line 130
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 136
    invoke-virtual {v1, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 137
    :cond_4
    :goto_1
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 140
    move-result-object p0

    .line 143
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    .line 144
    move-result p3

    .line 147
    const p4, 0x7f130cf0    # @string/wifitrackerlib_wifi_no_internet_no_reconnect 'Won’t automatically connect'

    .line 148
    const/4 v2, 0x2

    .line 151
    if-eqz p3, :cond_6

    .line 152
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    .line 154
    move-result p0

    .line 157
    if-ne p0, v2, :cond_5

    .line 158
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 163
    goto/16 :goto_3

    .line 164
    :cond_5
    const p0, 0x7f130cef    # @string/wifitrackerlib_wifi_no_internet 'No internet access'

    .line 166
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 172
    goto/16 :goto_3

    .line 173
    :cond_6
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    .line 175
    move-result p3

    .line 178
    const v3, 0x7f130ce6    # @string/wifitrackerlib_wifi_disabled_password_failure 'Authentication problem'

    .line 179
    if-eqz p3, :cond_7

    .line 182
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    .line 184
    move-result p3

    .line 187
    packed-switch p3, :pswitch_data_0

    .line 188
    :pswitch_0
    goto :goto_2

    .line 191
    :pswitch_1
    const p0, 0x7f130ce7    # @string/wifitrackerlib_wifi_disabled_transition_disable_indication 'Unavailable with current security settings'

    .line 192
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 195
    move-result-object v0

    .line 198
    goto/16 :goto_3

    .line 199
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    .line 201
    move-result p3

    .line 204
    if-nez p3, :cond_8

    .line 205
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    .line 207
    move-result p0

    .line 210
    if-lez p0, :cond_8

    .line 211
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 213
    move-result-object v0

    .line 216
    goto/16 :goto_3

    .line 217
    :pswitch_3
    const p0, 0x7f130ce2    # @string/wifitrackerlib_wifi_check_password_try_again 'Check password and try again'

    .line 219
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 225
    goto/16 :goto_3

    .line 226
    :pswitch_4
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 228
    move-result-object v0

    .line 231
    goto :goto_3

    .line 232
    :pswitch_5
    const p0, 0x7f130ce5    # @string/wifitrackerlib_wifi_disabled_network_failure 'IP configuration failure'

    .line 233
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 236
    move-result-object v0

    .line 239
    goto :goto_3

    .line 240
    :pswitch_6
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 244
    goto :goto_3

    .line 245
    :pswitch_7
    const p0, 0x7f130ce4    # @string/wifitrackerlib_wifi_disabled_generic 'Disabled'

    .line 246
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 249
    move-result-object v0

    .line 252
    goto :goto_3

    .line 253
    :cond_7
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    .line 254
    move-result p3

    .line 257
    if-lez p3, :cond_8

    .line 258
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    .line 260
    move-result p0

    .line 263
    if-nez p0, :cond_8

    .line 264
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 266
    move-result-object v0

    .line 269
    goto :goto_3

    .line 270
    :cond_8
    :goto_2
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getRecentFailureReason()I

    .line 271
    move-result p0

    .line 274
    const/16 p2, 0x11

    .line 275
    if-eq p0, p2, :cond_9

    .line 277
    packed-switch p0, :pswitch_data_1

    .line 279
    goto :goto_3

    .line 282
    :pswitch_8
    const p0, 0x7f130cee    # @string/wifitrackerlib_wifi_network_not_found 'Can't connect. Try again later.'

    .line 283
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 286
    move-result-object v0

    .line 289
    goto :goto_3

    .line 290
    :pswitch_9
    const p0, 0x7f130cec    # @string/wifitrackerlib_wifi_mbo_oce_assoc_disallowed_insufficient_rssi 'Weak signal. Try moving closer to the router.'

    .line 291
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 294
    move-result-object v0

    .line 297
    goto :goto_3

    .line 298
    :pswitch_a
    const p0, 0x7f130ceb    # @string/wifitrackerlib_wifi_mbo_assoc_disallowed_max_num_sta_associated 'Network is over capacity. Try again later.'

    .line 299
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 302
    move-result-object v0

    .line 305
    goto :goto_3

    .line 306
    :pswitch_b
    const p0, 0x7f130cea    # @string/wifitrackerlib_wifi_mbo_assoc_disallowed_cannot_connect 'Can't connect. Try again later.'

    .line 307
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 310
    move-result-object v0

    .line 313
    goto :goto_3

    .line 314
    :pswitch_c
    const p0, 0x7f130cf2    # @string/wifitrackerlib_wifi_poor_channel_conditions 'Temporary poor network conditions'

    .line 315
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 318
    move-result-object v0

    .line 321
    goto :goto_3

    .line 322
    :cond_9
    :pswitch_d
    const p0, 0x7f130cdd    # @string/wifitrackerlib_wifi_ap_unable_to_handle_new_sta 'Access point temporarily full'

    .line 323
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 326
    move-result-object v0

    .line 329
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 330
    move-result p0

    .line 333
    if-nez p0, :cond_a

    .line 334
    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 336
    :cond_a
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 339
    move-result-object p0

    .line 342
    return-object p0

    .line 343
    :cond_b
    :goto_4
    return-object v0

    .line 344
    nop

    .line 345
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 346
    :pswitch_data_1
    .packed-switch 0x3ea
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch
    .line 376
.end method

.method public static getMeteredDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    if-eqz p0, :cond_4

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canSetMeteredChoice()Z

    .line 9
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    if-nez v1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getMeteredChoice()I

    .line 16
    move-result v1

    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    return-object v0

    .line 22
    :cond_1
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getMeteredChoice()I

    .line 23
    move-result v1

    .line 26
    const v3, 0x7f130ced    # @string/wifitrackerlib_wifi_metered_label 'Metered'

    .line 27
    if-ne v1, v2, :cond_2

    .line 30
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_2
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getMeteredChoice()I

    .line 37
    move-result v1

    .line 40
    const/4 v2, 0x2

    .line 41
    if-ne v1, v2, :cond_3

    .line 42
    const p1, 0x7f130d0f    # @string/wifitrackerlib_wifi_unmetered_label 'Unmetered'

    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_3
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isMetered()Z

    .line 52
    move-result p1

    .line 55
    if-eqz p1, :cond_4

    .line 56
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    :cond_4
    :goto_0
    return-object v0
    .line 62
.end method

.method public static getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    .line 2
    move-result-object p0

    .line 5
    if-ltz p1, :cond_2

    .line 6
    array-length v0, p0

    .line 8
    mul-int/lit8 v0, v0, 0x8

    .line 9
    if-gt p1, v0, :cond_2

    .line 11
    div-int/lit8 v0, p1, 0x8

    .line 13
    rem-int/lit8 p1, p1, 0x8

    .line 15
    const/16 v1, 0xff

    .line 17
    rsub-int/lit8 p1, p1, 0x8

    .line 19
    shl-int p1, v1, p1

    .line 21
    int-to-byte p1, p1

    .line 23
    array-length v1, p0

    .line 24
    if-ge v0, v1, :cond_0

    .line 25
    aget-byte v1, p0, v0

    .line 27
    and-int/2addr p1, v1

    .line 29
    int-to-byte p1, p1

    .line 30
    aput-byte p1, p0, v0

    .line 31
    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 33
    array-length p1, p0

    .line 35
    if-ge v0, p1, :cond_1

    .line 36
    const/4 p1, 0x0

    .line 38
    aput-byte p1, p0, v0

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 42
    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-object p0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    const-string v1, "getNetworkPart error - "

    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    throw p1

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    const-string v2, "IP address with "

    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    array-length p0, p0

    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    const-string p0, " bytes has invalid prefix length "

    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p0

    .line 96
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    throw v0
    .line 100
.end method

.method public static getNetworkSelectionDescription(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 2
    const-string p0, ""

    .line 4
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    .line 16
    move-result v1

    .line 19
    const-string v2, " "

    .line 20
    if-eqz v1, :cond_2

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    const-string v3, " ("

    .line 26
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    .line 45
    move-result-wide v3

    .line 48
    const-wide/16 v5, 0x0

    .line 49
    cmp-long v1, v3, v5

    .line 51
    if-lez v1, :cond_1

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    move-result-wide v3

    .line 58
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    .line 59
    move-result-wide v5

    .line 62
    sub-long/2addr v3, v5

    .line 63
    const-wide/16 v5, 0x3e8

    .line 64
    div-long/2addr v3, v5

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_1
    const-string v1, ")"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getMaxNetworkSelectionDisableReason()I

    .line 91
    move-result v1

    .line 94
    const/4 v3, 0x0

    .line 95
    :goto_0
    if-gt v3, v1, :cond_4

    .line 96
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    .line 98
    move-result v4

    .line 101
    if-nez v4, :cond_3

    .line 102
    goto :goto_1

    .line 104
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReasonString(I)Ljava/lang/String;

    .line 108
    move-result-object v5

    .line 111
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v5, "="

    .line 115
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 123
    goto :goto_0

    .line 125
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p0

    .line 129
    return-object p0
    .line 130
.end method

.method public static getSecurityTypesFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2
    const/16 v1, 0xe

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 6
    move-result v0

    .line 9
    const/16 v1, 0x8

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p0

    .line 17
    filled-new-array {p0}, [Ljava/lang/Integer;

    .line 18
    move-result-object p0

    .line 21
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 27
    const/16 v2, 0xd

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    const/4 p0, 0x7

    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object p0

    .line 41
    filled-new-array {p0}, [Ljava/lang/Integer;

    .line 42
    move-result-object p0

    .line 45
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 46
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 51
    const/16 v2, 0xa

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    .line 55
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    const/4 p0, 0x5

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p0

    .line 65
    filled-new-array {p0}, [Ljava/lang/Integer;

    .line 66
    move-result-object p0

    .line 69
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 70
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 75
    const/16 v2, 0x9

    .line 77
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    .line 79
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    const/4 p0, 0x6

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object p0

    .line 89
    filled-new-array {p0}, [Ljava/lang/Integer;

    .line 90
    move-result-object p0

    .line 93
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 94
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 99
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 101
    move-result v0

    .line 104
    const/4 v1, 0x4

    .line 105
    if-eqz v0, :cond_4

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object p0

    .line 111
    filled-new-array {p0}, [Ljava/lang/Integer;

    .line 112
    move-result-object p0

    .line 115
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 116
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 123
    move-result v0

    .line 126
    const/4 v1, 0x2

    .line 127
    if-eqz v0, :cond_5

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object p0

    .line 133
    filled-new-array {p0}, [Ljava/lang/Integer;

    .line 134
    move-result-object p0

    .line 137
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 138
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 145
    move-result v0

    .line 148
    const/4 v3, 0x1

    .line 149
    if-eqz v0, :cond_7

    .line 150
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    .line 152
    if-eqz v0, :cond_6

    .line 154
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 156
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    .line 158
    move-result v0

    .line 161
    if-nez v0, :cond_6

    .line 162
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 164
    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    .line 166
    move-result p0

    .line 169
    if-eqz p0, :cond_6

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object p0

    .line 175
    filled-new-array {p0}, [Ljava/lang/Integer;

    .line 176
    move-result-object p0

    .line 179
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 180
    move-result-object p0

    .line 183
    return-object p0

    .line 184
    :cond_6
    const/4 p0, 0x3

    .line 185
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object p0

    .line 189
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    move-result-object v0

    .line 193
    filled-new-array {p0, v0}, [Ljava/lang/Integer;

    .line 194
    move-result-object p0

    .line 197
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 198
    move-result-object p0

    .line 201
    return-object p0

    .line 202
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 203
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    .line 205
    move-result v0

    .line 208
    if-eqz v0, :cond_8

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    move-result-object p0

    .line 214
    filled-new-array {p0}, [Ljava/lang/Integer;

    .line 215
    move-result-object p0

    .line 218
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 219
    move-result-object p0

    .line 222
    return-object p0

    .line 223
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 224
    const/4 v1, 0x0

    .line 226
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 227
    move-result v0

    .line 230
    if-eqz v0, :cond_a

    .line 231
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 233
    if-eqz v0, :cond_a

    .line 235
    move v0, v1

    .line 237
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 238
    array-length v4, v2

    .line 240
    if-ge v0, v4, :cond_a

    .line 241
    aget-object v2, v2, v0

    .line 243
    if-eqz v2, :cond_9

    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    move-result-object p0

    .line 250
    filled-new-array {p0}, [Ljava/lang/Integer;

    .line 251
    move-result-object p0

    .line 254
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 255
    move-result-object p0

    .line 258
    return-object p0

    .line 259
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 260
    goto :goto_0

    .line 262
    :cond_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    move-result-object p0

    .line 266
    filled-new-array {p0}, [Ljava/lang/Integer;

    .line 267
    move-result-object p0

    .line 270
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 271
    move-result-object p0

    .line 274
    return-object p0
    .line 275
.end method

.method public static getSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I
    .locals 3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, -0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/Integer;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 29
    move-result v0

    .line 32
    const/4 v1, 0x2

    .line 33
    if-ne v0, v1, :cond_4

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object v0

    .line 39
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    return v2

    .line 46
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v0

    .line 50
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    return v1

    .line 57
    :cond_3
    const/4 v0, 0x3

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v1

    .line 62
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 63
    move-result v1

    .line 66
    if-eqz v1, :cond_4

    .line 67
    return v0

    .line 69
    :cond_4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    move-result-object p0

    .line 73
    check-cast p0, Ljava/lang/Integer;

    .line 74
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 76
    move-result p0

    .line 79
    return p0
    .line 80
.end method

.method public static getSuggestionOrSpecifierLabel(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, ""

    .line 2
    if-eqz p0, :cond_d

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto/16 :goto_4

    .line 8
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 10
    const/4 v2, -0x1

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    const-string/jumbo v1, "telephony_subscription_service"

    .line 16
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 23
    if-nez v1, :cond_2

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 28
    move-result-object v1

    .line 31
    if-eqz v1, :cond_5

    .line 32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 34
    move-result v3

    .line 37
    if-eqz v3, :cond_3

    .line 38
    goto :goto_0

    .line 40
    :cond_3
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 41
    move-result v3

    .line 44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    move-result-object v1

    .line 48
    move v4, v2

    .line 49
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v5

    .line 53
    if-eqz v5, :cond_6

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 59
    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 60
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    .line 62
    move-result v6

    .line 65
    iget v7, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 66
    if-ne v6, v7, :cond_4

    .line 68
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 70
    move-result v4

    .line 73
    if-ne v4, v3, :cond_4

    .line 74
    goto :goto_1

    .line 76
    :cond_5
    :goto_0
    move v4, v2

    .line 77
    :cond_6
    :goto_1
    if-ne v4, v2, :cond_7

    .line 78
    goto :goto_2

    .line 80
    :cond_7
    const-string v1, "phone"

    .line 81
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    move-result-object v1

    .line 86
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 87
    if-nez v1, :cond_8

    .line 89
    goto :goto_2

    .line 91
    :cond_8
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 92
    move-result-object v1

    .line 95
    if-nez v1, :cond_9

    .line 96
    goto :goto_2

    .line 98
    :cond_9
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCarrierIdName()Ljava/lang/CharSequence;

    .line 99
    move-result-object v1

    .line 102
    if-nez v1, :cond_a

    .line 103
    :goto_2
    const/4 v1, 0x0

    .line 105
    goto :goto_3

    .line 106
    :cond_a
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 110
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    move-result v2

    .line 114
    if-nez v2, :cond_b

    .line 115
    return-object v1

    .line 117
    :cond_b
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 118
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 120
    move-result-object v2

    .line 123
    const/4 v3, 0x0

    .line 124
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 125
    move-result-object v1

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 129
    move-result-object p0

    .line 132
    invoke-virtual {v1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 133
    move-result-object p0

    .line 136
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 137
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    move-result p0

    .line 144
    if-nez p0, :cond_c

    .line 145
    return-object v0

    .line 147
    :cond_c
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 148
    return-object p0

    .line 150
    :cond_d
    :goto_4
    return-object v0
    .line 151
.end method

.method public static getVerboseLoggingDescription(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;
    .locals 13

    .line 1
    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    .line 2
    if-eqz v0, :cond_a

    .line 4
    if-nez p0, :cond_0

    .line 6
    goto/16 :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    .line 10
    const-string v1, " "

    .line 12
    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    const-string v1, "affLinks = "

    .line 17
    const-string v2, "linkId = "

    .line 19
    const-string v3, "mldMac = "

    .line 21
    const-string v4, "score = "

    .line 23
    const-string v5, "rssi = "

    .line 25
    const-string/jumbo v6, "standard = "

    .line 27
    const-string v7, "f = "

    .line 30
    monitor-enter p0

    .line 32
    :try_start_0
    new-instance v8, Ljava/util/StringJoiner;

    .line 33
    const-string v9, " "

    .line 35
    invoke-direct {v8, v9}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 40
    move-result v9

    .line 43
    const/4 v10, 0x2

    .line 44
    if-ne v9, v10, :cond_2

    .line 45
    iget-object v9, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 47
    if-eqz v9, :cond_2

    .line 49
    new-instance v9, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v7, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 56
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 58
    move-result v7

    .line 61
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v7

    .line 68
    invoke-virtual {v8, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 69
    iget-object v7, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 72
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 74
    move-result-object v7

    .line 77
    if-eqz v7, :cond_1

    .line 78
    invoke-virtual {v8, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 80
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v6, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 88
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 90
    move-result v6

    .line 93
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v6

    .line 100
    invoke-virtual {v8, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 109
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 111
    move-result v5

    .line 114
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v5

    .line 121
    invoke-virtual {v8, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    .line 125
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 130
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getScore()I

    .line 132
    move-result v4

    .line 135
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v4

    .line 142
    invoke-virtual {v8, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 143
    const-string v4, " tx=%.1f,"

    .line 146
    const/4 v5, 0x1

    .line 148
    new-array v6, v5, [Ljava/lang/Object;

    .line 149
    iget-object v7, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 151
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    .line 153
    move-result-wide v11

    .line 156
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 157
    move-result-object v7

    .line 160
    const/4 v9, 0x0

    .line 161
    aput-object v7, v6, v9

    .line 162
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    move-result-object v4

    .line 167
    invoke-virtual {v8, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 168
    const-string v4, "%.1f,"

    .line 171
    new-array v6, v5, [Ljava/lang/Object;

    .line 173
    iget-object v7, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 175
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getRetriedTxPacketsPerSecond()D

    .line 177
    move-result-wide v11

    .line 180
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 181
    move-result-object v7

    .line 184
    aput-object v7, v6, v9

    .line 185
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    move-result-object v4

    .line 190
    invoke-virtual {v8, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 191
    const-string v4, "%.1f "

    .line 194
    new-array v6, v5, [Ljava/lang/Object;

    .line 196
    iget-object v7, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 198
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    .line 200
    move-result-wide v11

    .line 203
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 204
    move-result-object v7

    .line 207
    aput-object v7, v6, v9

    .line 208
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    move-result-object v4

    .line 213
    invoke-virtual {v8, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 214
    const-string v4, "rx=%.1f"

    .line 217
    new-array v5, v5, [Ljava/lang/Object;

    .line 219
    iget-object v6, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 221
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    .line 223
    move-result-wide v6

    .line 226
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 227
    move-result-object v6

    .line 230
    aput-object v6, v5, v9

    .line 231
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 233
    move-result-object v4

    .line 236
    invoke-virtual {v8, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 237
    sget v4, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    .line 240
    iget-object v4, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 242
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getApMldMacAddress()Landroid/net/MacAddress;

    .line 244
    move-result-object v4

    .line 247
    if-eqz v4, :cond_2

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 255
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getApMldMacAddress()Landroid/net/MacAddress;

    .line 257
    move-result-object v3

    .line 260
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    move-result-object v3

    .line 267
    invoke-virtual {v8, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    .line 271
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 276
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getApMloLinkId()I

    .line 278
    move-result v2

    .line 281
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object v2

    .line 288
    invoke-virtual {v8, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    .line 292
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 297
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getAffiliatedMloLinks()Ljava/util/List;

    .line 299
    move-result-object v1

    .line 302
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    .line 303
    move-result-object v1

    .line 306
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    move-result-object v1

    .line 310
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 314
    move-result-object v1

    .line 317
    invoke-virtual {v8, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 318
    :cond_2
    invoke-virtual {v8}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 321
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    .line 325
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 326
    move-result v2

    .line 329
    if-nez v2, :cond_3

    .line 330
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 332
    :cond_3
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiChannelUtilization()V

    .line 335
    const-string v1, ""

    .line 338
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 340
    move-result v2

    .line 343
    if-nez v2, :cond_4

    .line 344
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 346
    :cond_4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWeakNetSwitchTime()V

    .line 349
    const-string v1, ""

    .line 352
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 354
    move-result v2

    .line 357
    if-nez v2, :cond_5

    .line 358
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 360
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 363
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    .line 368
    move-result v2

    .line 371
    if-ne v2, v10, :cond_6

    .line 372
    const-string v2, "hasInternet:"

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->hasInternetAccess()Z

    .line 379
    move-result v2

    .line 382
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 383
    const-string v2, ", isDefaultNetwork:"

    .line 386
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-boolean v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mIsDefaultNetwork:Z

    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 393
    const-string v2, ", isLowQuality:"

    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isLowQuality()Z

    .line 401
    move-result v2

    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 405
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    move-result-object v1

    .line 411
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 412
    move-result v2

    .line 415
    if-nez v2, :cond_7

    .line 416
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 418
    :cond_7
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getScanResultDescription()Ljava/lang/String;

    .line 421
    move-result-object v1

    .line 424
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 425
    move-result v2

    .line 428
    if-nez v2, :cond_8

    .line 429
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 431
    :cond_8
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getNetworkSelectionDescription()Ljava/lang/String;

    .line 434
    move-result-object p0

    .line 437
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 438
    move-result v1

    .line 441
    if-nez v1, :cond_9

    .line 442
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 444
    :cond_9
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 447
    move-result-object p0

    .line 450
    return-object p0

    .line 451
    :catchall_0
    move-exception v0

    .line 452
    monitor-exit p0

    .line 453
    throw v0

    .line 454
    :cond_a
    :goto_0
    const-string p0, ""

    .line 455
    return-object p0
    .line 457
.end method

.method public static getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 2
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/net/wifi/WifiInfo;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 10
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 13
    move-result-object p0

    .line 16
    instance-of v0, p0, Landroid/net/vcn/VcnTransportInfo;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    check-cast p0, Landroid/net/vcn/VcnTransportInfo;

    .line 21
    invoke-virtual {p0}, Landroid/net/vcn/VcnTransportInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 23
    move-result-object p0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_0
    return-object p0
    .line 29
.end method
