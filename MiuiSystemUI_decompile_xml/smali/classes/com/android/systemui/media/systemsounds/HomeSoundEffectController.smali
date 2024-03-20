.class public final Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public mIsLastTaskHome:Z

.field public mLastActivityHasNoHomeSound:Z

.field public mLastActivityType:I

.field public mLastHomePackageName:Ljava/lang/String;

.field public mLastTaskId:I

.field public final mPlayHomeSoundAfterAssistant:Z

.field public final mPlayHomeSoundAfterDream:Z

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/shared/system/ActivityManagerWrapper;Landroid/content/pm/PackageManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mIsLastTaskHome:Z

    .line 6
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mLastActivityHasNoHomeSound:Z

    .line 9
    iput-object p2, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    .line 11
    iput-object p3, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 13
    iput-object p4, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 15
    iput-object p5, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPm:Landroid/content/pm/PackageManager;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p2

    .line 22
    const p3, 0x7f050046    # @bool/config_playHomeSoundAfterAssistant 'false'

    .line 23
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 26
    move-result p2

    .line 29
    iput-boolean p2, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPlayHomeSoundAfterAssistant:Z

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object p1

    .line 35
    const p2, 0x7f050047    # @bool/config_playHomeSoundAfterDream 'false'

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 39
    move-result p1

    .line 42
    iput-boolean p1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mPlayHomeSoundAfterDream:Z

    .line 43
    return-void
    .line 45
.end method


# virtual methods
.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    invoke-virtual {v0}, Landroid/media/AudioManager;->isHomeSoundEffectEnabled()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;-><init>(Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;)V

    .line 12
    iget-object p0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method
