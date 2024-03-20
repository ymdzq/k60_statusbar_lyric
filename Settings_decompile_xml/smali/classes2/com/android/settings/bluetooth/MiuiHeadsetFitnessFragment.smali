.class public final Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;
.super Lcom/android/settings/MiuiSettingsPreferenceFragment;
.source "MiuiHeadsetFitnessFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mBluetoothA2dpLock:Ljava/lang/Object;

.field private mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

.field private final mBluetoothHfpLock:Ljava/lang/Object;

.field private mBluetoothHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mCheckBtn:Landroid/widget/Button;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceId:Ljava/lang/String;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDoneBtn:Landroid/widget/Button;

.field private mHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;

.field private mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

.field private mIconLeftIV:Landroid/widget/ImageView;

.field private mIconRightIV:Landroid/widget/ImageView;

.field private mMusicNeedPlay:Z

.field private mOrientation:I

.field private mProgressLL:Landroid/widget/LinearLayout;

.field private mReCheckBtn:Landroid/widget/Button;

.field private mRecheckLL:Landroid/widget/LinearLayout;

.field private mResultLL:Landroid/widget/LinearLayout;

.field private mResultLeftTV:Landroid/widget/TextView;

.field private mResultRightTV:Landroid/widget/TextView;

.field private mRootView:Landroid/view/View;

.field private mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStreamID:I

.field private mSummaryTV:Landroid/widget/TextView;

.field state:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothA2dpLock(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothA2dpLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothHfpLock(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothHfpLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCheckBtn(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/Button;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mCheckBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHeadSetAct(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Lcom/android/settings/bluetooth/MiuiHeadsetActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconLeftIV(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mIconLeftIV:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconRightIV(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mIconRightIV:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressLL(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mProgressLL:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecheckLL(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRecheckLL:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResultLL(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mResultLL:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResultLeftTV(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mResultLeftTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResultRightTV(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mResultRightTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoundPool(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/media/SoundPool;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mSoundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummaryTV(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mSummaryTV:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothA2dp(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBluetoothHfp(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/bluetooth/BluetoothHeadset;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDialog(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSoundPool(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/media/SoundPool;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mSoundPool:Landroid/media/SoundPool;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIfNeedPauseMusic(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->checkIfNeedPauseMusic()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckIfNeedPlayMusic(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->checkIfNeedPlayMusic()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseProfileProxy(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->closeProfileProxy()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateDialog(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->createDialog(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misSCOOn(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->isSCOOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mplayDetectingMusic(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->playDetectingMusic()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPreferenceEnable(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->setPreferenceEnable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartFitnessCheck(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->startFitnessCheck()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopDetectingMusic(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->stopDetectingMusic()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUIForResult(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->updateUIForResult(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUIToCheck(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->updateUIToCheck()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateUIToChecking(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->updateUIToChecking()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/MiuiSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 100
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothHfpLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothA2dpLock:Ljava/lang/Object;

    const-string v0, ""

    .line 113
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    .line 168
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$1;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 774
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$16;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$16;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 793
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$17;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$17;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v0, 0x0

    .line 873
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->state:I

    return-void
.end method

.method private back()V
    .locals 0

    .line 716
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    return-void
.end method

.method private checkIfNeedPauseMusic()V
    .locals 6

    .line 814
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothA2dpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_0

    goto :goto_0

    .line 816
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 817
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mMusicNeedPlay:Z

    const-string v2, "MiuiHeadsetFitnessFragment"

    const-string v3, "NeedPauseMusic()"

    .line 818
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v4, 0x0

    const/16 v5, 0x7f

    invoke-direct {v3, v4, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 821
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, v5}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 824
    :cond_1
    monitor-exit v0

    return-void

    .line 815
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 824
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private checkIfNeedPlayMusic()V
    .locals 4

    .line 828
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    .line 829
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mMusicNeedPlay:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 830
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mMusicNeedPlay:Z

    const-string v1, "MiuiHeadsetFitnessFragment"

    const-string/jumbo v2, "playMusic()"

    .line 831
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x7e

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 834
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    :cond_1
    return-void
.end method

.method private closeProfileProxy()V
    .locals 4

    .line 761
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 763
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 764
    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 765
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    .line 768
    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 769
    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    :cond_1
    return-void
.end method

.method private createDialog(I)V
    .locals 2

    .line 720
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 721
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 722
    sget v0, Lcom/android/settings/R$string;->miheadset_fitness_check_result_dialog_title:I

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 723
    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 p1, 0x1

    .line 724
    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const p1, 0x104000a    # @android:string/ok

    const/4 v0, 0x0

    .line 725
    invoke-virtual {v1, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000    # @android:string/cancel

    .line 726
    invoke-virtual {v1, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 727
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 728
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$15;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$15;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getProfileProxy()V
    .locals 4

    .line 751
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 755
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method private initWidget()V
    .locals 6

    .line 349
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 351
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->layout_result:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mResultLL:Landroid/widget/LinearLayout;

    .line 352
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->fitness_btn_lauout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRecheckLL:Landroid/widget/LinearLayout;

    .line 353
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->fitness_progress_ll:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mProgressLL:Landroid/widget/LinearLayout;

    .line 354
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->fitness_summary:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mSummaryTV:Landroid/widget/TextView;

    .line 355
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->fitness_result_l:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mResultLeftTV:Landroid/widget/TextView;

    .line 356
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->fitness_result_r:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mResultRightTV:Landroid/widget/TextView;

    .line 357
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->fitness_start:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mCheckBtn:Landroid/widget/Button;

    .line 358
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mCheckBtn:Landroid/widget/Button;

    const-string v2, "continue"

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 360
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->fitness_btn_restart:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mReCheckBtn:Landroid/widget/Button;

    .line 361
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->fitness_btn_done:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDoneBtn:Landroid/widget/Button;

    .line 363
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->fitness_icon_l:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mIconLeftIV:Landroid/widget/ImageView;

    .line 365
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->fitness_icon_r:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mIconRightIV:Landroid/widget/ImageView;

    .line 367
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->fitness_icon:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_14

    .line 369
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 370
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01GrayHeadset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_icon_Gray:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 372
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01BlackHeadset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_icon_Black:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 374
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01YellowHeadset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 375
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_icon_Yellow:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 376
    :cond_2
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73WhiteHeadset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 377
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_k73_white:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 378
    :cond_3
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73BlackHeadset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 379
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_k73_black:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 380
    :cond_4
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73GreenHeadset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 381
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_k73_green:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 382
    :cond_5
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS02BlackHeadset(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v4, 0x1

    if-eqz v3, :cond_6

    .line 383
    new-instance v3, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$3;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$3;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 396
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_TWS02_black:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 397
    :cond_6
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK76sHeadset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 398
    new-instance v3, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$4;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$4;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_TWS01S:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 412
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 413
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_TWS200:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 414
    :cond_8
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73LBlueHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 415
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_k73_lblue:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 416
    :cond_9
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73AWhiteHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 417
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_k73a_white_enc:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$5;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$5;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 431
    :cond_a
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73ABlackHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 432
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_k73a_black_enc:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 433
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$6;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$6;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 446
    :cond_b
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73AGreenHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 447
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_k73a_green_enc:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$7;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$7;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 461
    :cond_c
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75WhiteHeadset(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75AWhiteHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1

    .line 476
    :cond_d
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75BlackHeadset(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75ABlackHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_0

    .line 491
    :cond_e
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75SHeadset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 492
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_k75s:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_f
    const-string v0, "0201010001"

    .line 493
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "0201010000"

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 495
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 497
    sget v0, Lcom/android/settings/R$drawable;->bt_headset_fitness_default:I

    .line 501
    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->checkLocalCached(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 502
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    .line 503
    invoke-static {v0, v2}, Lcom/android/settings/bluetooth/tws/MiuiHeadsetAnimation;->getFitnessDeviceDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 505
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 508
    :cond_10
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 477
    :cond_11
    :goto_0
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_k75_black_enc:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 478
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$9;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$9;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 462
    :cond_12
    :goto_1
    sget v0, Lcom/android/settings/R$drawable;->headset_fitness_k75_white_enc:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 463
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$8;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$8;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/content/Context;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v0, v4, v5}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 511
    :cond_13
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->updateIconMargin()V

    .line 514
    :cond_14
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v0

    goto :goto_3

    :cond_15
    move v0, v1

    :goto_3
    if-nez v0, :cond_16

    .line 515
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->setPreferenceEnable(Z)V

    return-void
.end method

.method private isSCOOn()Z
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothHfp:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothHeadset;->isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private playDetectingMusic()V
    .locals 7

    .line 840
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 841
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mStreamID:I

    :cond_0
    return-void
.end method

.method private releaseDetectingMusic()V
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 854
    iget v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 855
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    :cond_0
    return-void
.end method

.method private saveDeviceInfo()V
    .locals 3

    .line 860
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Headset_DeviceId"

    .line 861
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private setPreferenceEnable(Z)V
    .locals 2

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreferenceEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFitnessFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mCheckBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mReCheckBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 869
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDoneBtn:Landroid/widget/Button;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private startFitnessCheck()V
    .locals 4

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v1, "01"

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x5

    invoke-interface {v0, v3, v1, v2}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFitnessCheck failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiHeadsetFitnessFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->updateUIToCheck()V

    :goto_0
    return-void
.end method

.method private stopDetectingMusic()V
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mStreamID:I

    if-eqz v1, :cond_0

    .line 847
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 848
    iput v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mStreamID:I

    :cond_0
    return-void
.end method

.method private updateIconMargin()V
    .locals 3

    .line 520
    sget-object v0, Lmiui/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    if-eqz v1, :cond_1

    .line 526
    sget v1, Lcom/android/settings/R$id;->fitness_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mSummaryTV:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mIconLeftIV:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mIconRightIV:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 528
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mIconLeftIV:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mIconRightIV:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mSummaryTV:Landroid/widget/TextView;

    new-instance v2, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$10;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$10;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateUIForResult(Ljava/lang/String;)V
    .locals 2

    .line 619
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$14;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$14;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateUIToCheck()V
    .locals 2

    .line 581
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$11;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$11;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateUIToChecking()V
    .locals 2

    .line 593
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$12;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$12;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateUIToCheckingForRestart()V
    .locals 2

    .line 606
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$13;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$13;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 207
    const-class p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 212
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 213
    check-cast p1, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 214
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    .line 215
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 216
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getCachedBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 218
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->saveDeviceInfo()V

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 222
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mOrientation:I

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 330
    sget v0, Lcom/android/settings/R$id;->fitness_start:I

    const/16 v1, 0x64

    if-ne p1, v0, :cond_1

    .line 332
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mCheckBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "continue"

    .line 333
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->updateUIToCheck()V

    goto :goto_0

    :cond_0
    const-string v0, "check"

    .line 336
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 337
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 339
    :cond_1
    sget v0, Lcom/android/settings/R$id;->fitness_btn_restart:I

    if-ne p1, v0, :cond_2

    .line 340
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->updateUIToCheckingForRestart()V

    .line 341
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 342
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;

    const/16 p1, 0x66

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 343
    :cond_2
    sget v0, Lcom/android/settings/R$id;->fitness_btn_done:I

    if-ne p1, v0, :cond_3

    .line 344
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->back()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 227
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Headset_DeviceId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    .line 230
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 231
    new-instance p1, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;

    invoke-direct {p1, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;

    const-string p1, "audio"

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 233
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    if-eqz p1, :cond_1

    .line 234
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$2;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 241
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 248
    sget p3, Lcom/android/settings/R$layout;->headset_fitness_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, " "

    .line 252
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->initWidget()V

    .line 259
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    .line 322
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 323
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->releaseDetectingMusic()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 317
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 280
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 281
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, " "

    .line 283
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->getProfileProxy()V

    return-void
.end method

.method public onServiceConnected()V
    .locals 3

    const-string v0, "MiuiHeadsetFitnessFragment"

    const-string/jumbo v1, "onServiceConnected()"

    .line 263
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getService()Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    .line 265
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHeadSetAct:Lcom/android/settings/bluetooth/MiuiHeadsetActivity;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivity;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    .line 266
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    .line 267
    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isBleMmaConnect(Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 266
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->setPreferenceEnable(Z)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 272
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 273
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.bluetooth.ACTION.MMA_STATUS_CHANGED"

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 290
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 291
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    .line 292
    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK73Headset(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    .line 293
    invoke-static {v0}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK75Headset(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "fitness"

    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    .line 294
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miheadset_fitness_check_summary3:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mSummaryTV:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MiuiHeadsetFitnessFragment"

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop Checking K76/K73/K75, device:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mService:Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    const-string v1, "00"

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x5

    invoke-interface {v0, v3, v1, v2}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setCommonCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 304
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 307
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->closeProfileProxy()V

    .line 308
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public refreshStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 562
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "refreshStatus: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiHeadsetFitnessFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "\\,"

    const/4 v0, -0x1

    .line 563
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 564
    array-length p2, p1

    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const/16 p2, 0xf

    .line 565
    aget-object v0, p1, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 567
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment;->mHandler:Lcom/android/settings/bluetooth/MiuiHeadsetFitnessFragment$InnerHandler;

    const/16 v0, 0x65

    aget-object p1, p1, p2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
