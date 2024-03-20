.class public final Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/miui/statusbar/MiuiCarrierTextController;
.implements Lcom/android/systemui/statusbar/policy/CustomCarrierObserver$Callback;
.implements Lcom/android/systemui/statusbar/connectivity/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final listeners:Ljava/util/ArrayList;

.field public mAirplane:Z

.field protected final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mCardDisable:[Z

.field public mCarrier:[Ljava/lang/String;

.field public final mConfigShowAccessTo5G:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentCarrier:Ljava/lang/String;

.field public mCurrentCarrierStatus:I

.field public mCustomCarrier:[Ljava/lang/String;

.field public final mDataConnected:[Z

.field public final mDelayCarrierText:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

.field public mEmergencyOnly:Z

.field public mEmergencyOnlyString:Ljava/lang/String;

.field public mEmergencyOnlyString2:Ljava/lang/String;

.field public final mHasMobileDataFeature:Z

.field public final mHasVoiceCallingFeature:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLocaleLanguage:Ljava/lang/String;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMiuiMobileTypeName:[Ljava/lang/String;

.field public mNeedShowAccessTo5G:Z

.field public final mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public mNoServiceString:Ljava/lang/String;

.field public final mPhoneCount:I

.field public mRealCarrier:[Ljava/lang/String;

.field public final mSignalOptimization:[Z

.field public final mSimError:[Z

.field public final mSupportSignalOptimization:Z

.field public final mVowifi:[Z

.field public final updateCarrierTextRunnable:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/MiuiOperatorCustomizedPolicy;Lcom/android/systemui/dump/DumpManager;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->listeners:Ljava/util/ArrayList;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mNeedShowAccessTo5G:Z

    .line 13
    const-string v1, ""

    .line 15
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mLocaleLanguage:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mNoServiceString:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mEmergencyOnlyString:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mEmergencyOnlyString2:Ljava/lang/String;

    .line 23
    new-instance v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 25
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;I)V

    .line 27
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->updateCarrierTextRunnable:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 30
    new-instance v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2;

    .line 32
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;)V

    .line 34
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 37
    new-instance v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 39
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;I)V

    .line 42
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mDelayCarrierText:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 49
    const p2, 0x7f1306a1    # @string/lock_screen_no_sim_card_no_service 'No service'

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    move-result-object p2

    .line 57
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mNoServiceString:Ljava/lang/String;

    .line 58
    const p2, 0x7f1306a0    # @string/lock_screen_no_sim_card_emergency_only 'Emergency calls only'

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 66
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mEmergencyOnlyString:Ljava/lang/String;

    .line 67
    const p2, 0x10403b1    # @android:string/factorytest_not_system

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object p2

    .line 75
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mEmergencyOnlyString2:Ljava/lang/String;

    .line 76
    const-string p2, "phone"

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    move-result-object p2

    .line 83
    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 84
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 86
    move-result p2

    .line 89
    iput p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mPhoneCount:I

    .line 90
    new-array v1, p2, [Ljava/lang/String;

    .line 92
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mMiuiMobileTypeName:[Ljava/lang/String;

    .line 94
    new-array v1, p2, [Z

    .line 96
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mSimError:[Z

    .line 98
    new-array v1, p2, [Z

    .line 100
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mVowifi:[Z

    .line 102
    new-array v1, p2, [Z

    .line 104
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mDataConnected:[Z

    .line 106
    new-array v1, p2, [Z

    .line 108
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCardDisable:[Z

    .line 110
    new-array p2, p2, [Z

    .line 112
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mSignalOptimization:[Z

    .line 114
    move p2, v0

    .line 116
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mPhoneCount:I

    .line 117
    if-ge p2, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCardDisable:[Z

    .line 121
    aput-boolean v2, v1, p2

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mSignalOptimization:[Z

    .line 125
    aput-boolean v0, v1, p2

    .line 127
    add-int/lit8 p2, p2, 0x1

    .line 129
    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 132
    const-class p2, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;

    .line 135
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 137
    move-result-object p2

    .line 140
    check-cast p2, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;

    .line 141
    const-class v1, Lcom/android/systemui/statusbar/policy/CarrierObserver;

    .line 143
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    move-result-object v1

    .line 148
    check-cast v1, Lcom/android/systemui/statusbar/policy/CarrierObserver;

    .line 149
    const-class v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 151
    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 153
    move-result-object v3

    .line 156
    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 157
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 159
    const-class v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 161
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 163
    move-result-object v4

    .line 166
    check-cast v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 167
    const-class v5, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 169
    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 171
    move-result-object v5

    .line 174
    check-cast v5, Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 175
    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 177
    check-cast v5, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 179
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 181
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mHasMobileDataFeature:Z

    .line 183
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mHasVoiceFeature:Z

    .line 185
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mHasVoiceCallingFeature:Z

    .line 187
    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 189
    iget-object v6, v5, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    .line 192
    const/4 v7, 0x6

    .line 194
    invoke-virtual {v6, v7, v2, v0, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 195
    move-result-object v6

    .line 198
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 199
    iget-object v6, v5, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/connectivity/CallbackHandler;

    .line 202
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->isEmergencyOnly()Z

    .line 204
    move-result v5

    .line 207
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/connectivity/CallbackHandler;->setEmergencyCallsOnly(Z)V

    .line 208
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 211
    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 213
    iget-object v3, p2, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 216
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 218
    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/CustomCarrierObserver;->mCustomCarrier:[Ljava/lang/String;

    .line 226
    array-length v3, p2

    .line 228
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 229
    move-result-object p2

    .line 232
    check-cast p2, [Ljava/lang/String;

    .line 233
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCustomCarrier:[Ljava/lang/String;

    .line 235
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->updateCarrierTextRunnable:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 237
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->run()V

    .line 239
    iget-object p2, v1, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 242
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 244
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object p2, v1, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mCarriers:[Ljava/lang/String;

    .line 252
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->onCarrierChanged([Ljava/lang/String;)V

    .line 254
    check-cast v4, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 257
    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 262
    move-result-object p1

    .line 265
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 266
    move-result-object p1

    .line 269
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 270
    move-result-object p1

    .line 273
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 274
    move-result-object p1

    .line 277
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mLocaleLanguage:Ljava/lang/String;

    .line 278
    iget-object p1, p3, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 280
    const p2, 0x7f05005d    # @bool/config_show_access_to_5G 'false'

    .line 282
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 285
    move-result p1

    .line 288
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mConfigShowAccessTo5G:Z

    .line 289
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mContext:Landroid/content/Context;

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 293
    move-result-object p1

    .line 296
    const p2, 0x7f050010    # @bool/config_SupportSignalOptimization 'true'

    .line 297
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 300
    move-result p1

    .line 303
    if-eqz p1, :cond_1

    .line 304
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 306
    if-nez p1, :cond_1

    .line 308
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 310
    if-nez p1, :cond_1

    .line 312
    move v0, v2

    .line 314
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mSupportSignalOptimization:Z

    .line 315
    const-string p1, "MiuiCarrierTextController"

    .line 317
    invoke-virtual {p4, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 319
    return-void
    .line 322
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiCarrierTextController$CarrierTextListener;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->listeners:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 7
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCurrentCarrier:Ljava/lang/String;

    .line 16
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/miui/statusbar/MiuiCarrierTextController$CarrierTextListener;->onCarrierTextChanged(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCurrentCarrier:Ljava/lang/String;

    .line 21
    iget p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCurrentCarrierStatus:I

    .line 23
    invoke-interface {p1, v0, p0}, Lcom/android/systemui/plugins/miui/statusbar/MiuiCarrierTextController$CarrierTextListener;->onCarrierTextChanged(Ljava/lang/String;I)V

    .line 25
    return-void
    .line 28
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p2, "MiuiCarrierTextControllerstate:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const/4 p2, 0x0

    .line 7
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mPhoneCount:I

    .line 8
    if-ge p2, v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "------------phoneCount["

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "]-------------"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    const-string v1, " mSimError["

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, "]="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mSimError:[Z

    .line 56
    aget-boolean v0, v0, p2

    .line 58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    const-string v2, " mCardDisable["

    .line 65
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 79
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCardDisable:[Z

    .line 83
    aget-boolean v0, v0, p2

    .line 85
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    const-string v2, " mMiuiMobileTypeName["

    .line 92
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mMiuiMobileTypeName:[Ljava/lang/String;

    .line 110
    aget-object v0, v0, p2

    .line 112
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    const-string v2, " mCarrier["

    .line 119
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCarrier:[Ljava/lang/String;

    .line 137
    aget-object v0, v0, p2

    .line 139
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    const-string v2, " mCustomCarrier["

    .line 146
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    move-result-object v0

    .line 160
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCustomCarrier:[Ljava/lang/String;

    .line 164
    aget-object v0, v0, p2

    .line 166
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    add-int/lit8 p2, p2, 0x1

    .line 171
    goto/16 :goto_0

    .line 173
    :cond_0
    const-string p2, " mAirplane"

    .line 175
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mAirplane:Z

    .line 180
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 182
    const-string p2, " mEmergencyOnly"

    .line 185
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mEmergencyOnly:Z

    .line 190
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 192
    const-string p2, " mHasVoiceCallingFeature"

    .line 195
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mHasVoiceCallingFeature:Z

    .line 200
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 202
    const-string p2, " mHasMobileDataFeature"

    .line 205
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mHasMobileDataFeature:Z

    .line 210
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Z)V

    .line 212
    return-void
    .line 215
.end method

.method public final isInService(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mAirplane:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mNoServiceString:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mEmergencyOnlyString:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mEmergencyOnlyString2:Ljava/lang/String;

    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 30
    move-result p0

    .line 33
    if-eqz p0, :cond_0

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 39
    return p0
    .line 40
.end method

.method public final onCarrierChanged([Ljava/lang/String;)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 3
    move-result-object v0

    .line 6
    check-cast v0, [Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mRealCarrier:[Ljava/lang/String;

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mSupportSignalOptimization:Z

    .line 11
    if-eqz v0, :cond_3

    .line 13
    const/4 v0, 0x0

    .line 15
    :goto_0
    array-length v1, p1

    .line 16
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mDelayCarrierText:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 17
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 19
    if-ge v0, v1, :cond_2

    .line 21
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCarrier:[Ljava/lang/String;

    .line 23
    if-eqz v1, :cond_1

    .line 25
    array-length v4, v1

    .line 27
    if-le v4, v0, :cond_1

    .line 28
    aget-object v1, v1, v0

    .line 30
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->isInService(Ljava/lang/String;)Z

    .line 32
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    aget-object v1, p1, v0

    .line 38
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->isInService(Ljava/lang/String;)Z

    .line 40
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    invoke-virtual {v3, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 46
    move-result p0

    .line 49
    if-nez p0, :cond_0

    .line 50
    const-string p0, "MiuiCarrierTextController"

    .line 52
    const-string/jumbo p1, "startDelayCarrierTextTimer"

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-wide/16 p0, 0x12c

    .line 60
    invoke-virtual {v3, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    :cond_0
    return-void

    .line 65
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {v3, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 69
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    return-void

    .line 75
    :cond_3
    array-length v0, p1

    .line 76
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 77
    move-result-object p1

    .line 80
    check-cast p1, [Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCarrier:[Ljava/lang/String;

    .line 83
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->updateCarrierTextRunnable:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->run()V

    .line 87
    return-void
    .line 90
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mLocaleLanguage:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 18
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mLocaleLanguage:Ljava/lang/String;

    .line 26
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mContext:Landroid/content/Context;

    .line 28
    const v0, 0x7f1306a1    # @string/lock_screen_no_sim_card_no_service 'No service'

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mNoServiceString:Ljava/lang/String;

    .line 37
    const v0, 0x7f1306a0    # @string/lock_screen_no_sim_card_emergency_only 'Emergency calls only'

    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mEmergencyOnlyString:Ljava/lang/String;

    .line 46
    const v0, 0x10403b1    # @android:string/factorytest_not_system

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mEmergencyOnlyString2:Ljava/lang/String;

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->updateCarrierTextRunnable:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->run()V

    .line 59
    :cond_0
    return-void
    .line 62
.end method

.method public final removeCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiCarrierTextController$CarrierTextListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->listeners:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public final setEmergencyCallsOnly(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$4;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;ZI)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
    .line 13
.end method

.method public final setIsAirplaneMode(Lcom/android/systemui/statusbar/connectivity/IconState;)V
    .locals 2

    .line 1
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/IconState;->visible:Z

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$4;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;ZI)V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    return-void
    .line 15
.end method

.method public final setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V
    .locals 8

    .line 1
    iget v0, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->slotId:I

    .line 2
    if-ltz v0, :cond_7

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mMiuiMobileTypeName:[Ljava/lang/String;

    .line 6
    array-length v2, v1

    .line 8
    if-lt v0, v2, :cond_0

    .line 9
    goto/16 :goto_3

    .line 11
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mSupportSignalOptimization:Z

    .line 13
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mSignalOptimization:[Z

    .line 15
    const/4 v4, 0x1

    .line 17
    iget-boolean v5, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->isSignalOptimization:Z

    .line 18
    if-eqz v2, :cond_1

    .line 20
    aget-boolean v2, v3, v0

    .line 22
    if-eqz v2, :cond_1

    .line 24
    if-nez v5, :cond_1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v6, "setMobileDataIndicators,mSignalOptimization: "

    .line 30
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    aget-boolean v6, v3, v0

    .line 36
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    const-string v6, ", slotId: "

    .line 41
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 52
    const-string v6, "MiuiCarrierTextController"

    .line 53
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mRealCarrier:[Ljava/lang/String;

    .line 58
    array-length v6, v2

    .line 60
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 64
    check-cast v2, [Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCarrier:[Ljava/lang/String;

    .line 67
    move v2, v4

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v2, 0x0

    .line 71
    :goto_0
    aput-boolean v5, v3, v0

    .line 72
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mVowifi:[Z

    .line 74
    aget-boolean v5, v3, v0

    .line 76
    iget-boolean v6, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->vowifi:Z

    .line 78
    if-eq v5, v6, :cond_2

    .line 80
    aput-boolean v6, v3, v0

    .line 82
    move v2, v4

    .line 84
    :cond_2
    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 85
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mConfigShowAccessTo5G:Z

    .line 87
    if-nez v3, :cond_3

    .line 89
    if-eqz v5, :cond_4

    .line 91
    :cond_3
    aget-object v3, v1, v0

    .line 93
    iget-object v6, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->showName:Ljava/lang/String;

    .line 95
    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 97
    move-result v3

    .line 100
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mDataConnected:[Z

    .line 101
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->dataConnected:Z

    .line 103
    if-eqz v3, :cond_5

    .line 105
    aget-boolean v3, v7, v0

    .line 107
    if-eq v3, p1, :cond_4

    .line 109
    goto :goto_1

    .line 111
    :cond_4
    move v4, v2

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    :goto_1
    aput-object v6, v1, v0

    .line 114
    aput-boolean p1, v7, v0

    .line 116
    if-eqz v5, :cond_6

    .line 118
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mNeedShowAccessTo5G:Z

    .line 120
    if-nez p1, :cond_6

    .line 122
    const-string p1, "5G"

    .line 124
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result p1

    .line 129
    if-eqz p1, :cond_6

    .line 130
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mNeedShowAccessTo5G:Z

    .line 132
    :cond_6
    :goto_2
    if-eqz v4, :cond_7

    .line 134
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->updateCarrierTextRunnable:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;->run()V

    .line 138
    :cond_7
    :goto_3
    return-void
    .line 141
.end method

.method public final setSubs(Ljava/util/List;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCardDisable:[Z

    .line 4
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mPhoneCount:I

    .line 6
    if-ge v1, v3, :cond_0

    .line 8
    const/4 v3, 0x1

    .line 10
    aput-boolean v3, v2, v1

    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 19
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 30
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 32
    move-result v1

    .line 35
    if-ltz v1, :cond_1

    .line 36
    if-ge v1, v3, :cond_1

    .line 38
    aput-boolean v0, v2, v1

    .line 40
    goto :goto_1

    .line 42
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->updateCarrierTextRunnable:Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$1;

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 45
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    return-void
    .line 50
.end method

.method public final updateCarrierText()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mPhoneCount:I

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 4
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    const-string v4, ""

    .line 8
    if-ge v3, v0, :cond_5

    .line 10
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mSimError:[Z

    .line 12
    aget-boolean v5, v5, v3

    .line 14
    if-nez v5, :cond_3

    .line 16
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCardDisable:[Z

    .line 18
    aget-boolean v5, v5, v3

    .line 20
    if-eqz v5, :cond_0

    .line 22
    goto :goto_2

    .line 24
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCustomCarrier:[Ljava/lang/String;

    .line 25
    if-eqz v5, :cond_1

    .line 27
    if-ltz v3, :cond_1

    .line 29
    array-length v6, v5

    .line 31
    if-ge v3, v6, :cond_1

    .line 32
    aget-object v5, v5, v3

    .line 34
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v5

    .line 39
    if-nez v5, :cond_1

    .line 40
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCustomCarrier:[Ljava/lang/String;

    .line 42
    aget-object v4, v4, v3

    .line 44
    goto :goto_1

    .line 46
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCarrier:[Ljava/lang/String;

    .line 47
    if-eqz v5, :cond_2

    .line 49
    if-ltz v3, :cond_2

    .line 51
    array-length v6, v5

    .line 53
    if-ge v3, v6, :cond_2

    .line 54
    aget-object v5, v5, v3

    .line 56
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    move-result v5

    .line 61
    if-nez v5, :cond_2

    .line 62
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCarrier:[Ljava/lang/String;

    .line 64
    aget-object v4, v4, v3

    .line 66
    :cond_2
    :goto_1
    aput-object v4, v1, v3

    .line 68
    sget-boolean v5, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 70
    if-eqz v5, :cond_4

    .line 72
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v4

    .line 77
    if-nez v4, :cond_4

    .line 78
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mMiuiMobileTypeName:[Ljava/lang/String;

    .line 80
    aget-object v5, v4, v3

    .line 82
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v5

    .line 87
    if-nez v5, :cond_4

    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    aget-object v6, v1, v3

    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    aget-object v4, v4, v3

    .line 100
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v4

    .line 108
    aput-object v4, v1, v3

    .line 109
    goto :goto_3

    .line 111
    :cond_3
    :goto_2
    aput-object v4, v1, v3

    .line 112
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 114
    goto :goto_0

    .line 116
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mAirplane:Z

    .line 117
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mContext:Landroid/content/Context;

    .line 119
    const/4 v6, 0x1

    .line 121
    if-eqz v3, :cond_a

    .line 122
    new-array v3, v0, [Z

    .line 124
    move v7, v2

    .line 126
    move v8, v6

    .line 127
    :goto_4
    if-ge v7, v0, :cond_7

    .line 128
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mVowifi:[Z

    .line 130
    aget-boolean v9, v9, v7

    .line 132
    if-eqz v9, :cond_6

    .line 134
    aget-object v9, v1, v7

    .line 136
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    move-result v9

    .line 141
    if-nez v9, :cond_6

    .line 142
    aput-boolean v6, v3, v7

    .line 144
    move v8, v2

    .line 146
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 147
    goto :goto_4

    .line 149
    :cond_7
    if-nez v8, :cond_9

    .line 150
    move v7, v2

    .line 152
    :goto_5
    if-ge v7, v0, :cond_9

    .line 153
    aget-boolean v9, v3, v7

    .line 155
    if-nez v9, :cond_8

    .line 157
    aput-object v4, v1, v7

    .line 159
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 161
    goto :goto_5

    .line 163
    :cond_9
    if-eqz v8, :cond_a

    .line 164
    const v0, 0x7f130695    # @string/lock_screen_carrier_airplane_mode_on 'Airplane mode'

    .line 166
    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 172
    move v10, v2

    .line 173
    goto :goto_8

    .line 174
    :cond_a
    move v7, v2

    .line 175
    move v8, v7

    .line 176
    move v10, v8

    .line 177
    move-object v3, v4

    .line 178
    move v9, v6

    .line 179
    :goto_6
    if-ge v7, v0, :cond_f

    .line 180
    aget-object v11, v1, v7

    .line 182
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    move-result v11

    .line 187
    if-nez v11, :cond_d

    .line 188
    aget-object v11, v1, v7

    .line 190
    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->isInService(Ljava/lang/String;)Z

    .line 192
    move-result v11

    .line 195
    if-eqz v11, :cond_b

    .line 196
    move v10, v6

    .line 198
    :cond_b
    if-eqz v9, :cond_c

    .line 199
    aget-object v3, v1, v7

    .line 201
    move v9, v2

    .line 203
    goto :goto_7

    .line 204
    :cond_c
    const-string v11, " | "

    .line 205
    invoke-static {v3, v11}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    move-result-object v3

    .line 210
    aget-object v11, v1, v7

    .line 211
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object v3

    .line 219
    :cond_d
    :goto_7
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mDataConnected:[Z

    .line 220
    aget-boolean v11, v11, v7

    .line 222
    if-eqz v11, :cond_e

    .line 224
    move v8, v6

    .line 226
    :cond_e
    add-int/lit8 v7, v7, 0x1

    .line 227
    goto :goto_6

    .line 229
    :cond_f
    if-eqz v8, :cond_10

    .line 230
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mNeedShowAccessTo5G:Z

    .line 232
    if-eqz v0, :cond_10

    .line 234
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 236
    move-result-object v0

    .line 239
    const v1, 0x7f130694    # @string/lock_screen_access_to_5G 'Access to 5G'

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 243
    move-result-object v0

    .line 246
    new-instance v1, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$$ExternalSyntheticLambda0;

    .line 247
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;)V

    .line 249
    const-wide/16 v6, 0x1770

    .line 252
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 254
    invoke-virtual {v3, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    goto :goto_8

    .line 259
    :cond_10
    move-object v0, v3

    .line 260
    :goto_8
    const-string v1, "jp_sb"

    .line 261
    sget-object v3, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 263
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    move-result v1

    .line 268
    const v3, 0x7f1306a1    # @string/lock_screen_no_sim_card_no_service 'No service'

    .line 269
    if-eqz v1, :cond_11

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 274
    check-cast v1, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 276
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->getNumberSubscriptions()I

    .line 278
    move-result v1

    .line 281
    if-nez v1, :cond_11

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    .line 284
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 289
    move-result-object v1

    .line 292
    const v6, 0x7f1305e6    # @string/keyguard_missing_sim_message_short 'No SIM'

    .line 293
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 296
    move-result-object v1

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 303
    move-result-object v1

    .line 306
    const v6, 0x7f130b21    # @string/status_bar_network_name_separator '-'

    .line 307
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 310
    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 317
    move-result-object v1

    .line 320
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 321
    move-result-object v1

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    move-result-object v0

    .line 331
    goto :goto_9

    .line 332
    :cond_11
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mEmergencyOnly:Z

    .line 333
    if-eqz v1, :cond_12

    .line 335
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mHasVoiceCallingFeature:Z

    .line 337
    if-eqz v1, :cond_12

    .line 339
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 341
    move-result-object v0

    .line 344
    const v1, 0x7f1306a0    # @string/lock_screen_no_sim_card_emergency_only 'Emergency calls only'

    .line 345
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 348
    move-result-object v0

    .line 351
    goto :goto_9

    .line 352
    :cond_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 353
    move-result v1

    .line 356
    if-eqz v1, :cond_13

    .line 357
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 359
    move-result-object v0

    .line 362
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 363
    move-result-object v0

    .line 366
    :cond_13
    :goto_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mHasMobileDataFeature:Z

    .line 367
    if-nez v1, :cond_14

    .line 369
    goto :goto_a

    .line 371
    :cond_14
    move-object v4, v0

    .line 372
    :goto_a
    const-string/jumbo v0, "updateCarrierText: "

    .line 373
    const-string v1, "MiuiCarrierTextController"

    .line 376
    invoke-static {v0, v4, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCurrentCarrier:Ljava/lang/String;

    .line 381
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 383
    move-result v0

    .line 386
    if-eqz v0, :cond_15

    .line 387
    goto :goto_c

    .line 389
    :cond_15
    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCurrentCarrier:Ljava/lang/String;

    .line 390
    iput v10, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->mCurrentCarrierStatus:I

    .line 392
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiCarrierTextControllerImpl;->listeners:Ljava/util/ArrayList;

    .line 394
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 396
    move-result v0

    .line 399
    :goto_b
    if-ge v2, v0, :cond_16

    .line 400
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 402
    move-result-object v1

    .line 405
    check-cast v1, Lcom/android/systemui/plugins/miui/statusbar/MiuiCarrierTextController$CarrierTextListener;

    .line 406
    invoke-interface {v1, v4}, Lcom/android/systemui/plugins/miui/statusbar/MiuiCarrierTextController$CarrierTextListener;->onCarrierTextChanged(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 411
    move-result-object v1

    .line 414
    check-cast v1, Lcom/android/systemui/plugins/miui/statusbar/MiuiCarrierTextController$CarrierTextListener;

    .line 415
    invoke-interface {v1, v4, v10}, Lcom/android/systemui/plugins/miui/statusbar/MiuiCarrierTextController$CarrierTextListener;->onCarrierTextChanged(Ljava/lang/String;I)V

    .line 417
    add-int/lit8 v2, v2, 0x1

    .line 420
    goto :goto_b

    .line 422
    :cond_16
    :goto_c
    return-void
    .line 423
.end method
