.class public Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerStub;


# static fields
.field public static final FORCE_FSG_NAV_BAR:Ljava/lang/String; = "force_fsg_nav_bar"

.field private static final MAX_TUTORIAL_SHOW_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OneHandedTutorialHandler"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mNavigationObserver:Landroid/database/ContentObserver;

.field private mSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

.field private mShownCounts:I

.field private mTargetViewContainer:Landroid/view/ViewGroup;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fputmShownCounts(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mShownCounts:I

    .line 3
    return-void
    .line 5
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canShowTutorial()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mShownCounts:I

    .line 2
    const/4 v0, 0x2

    .line 4
    if-ge p0, v0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public init(Landroid/content/Context;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Landroid/view/WindowManager;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 8
    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 10
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    .line 12
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 14
    move-result p3

    .line 17
    invoke-virtual {p2, p1, p3}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getTutorialShownCounts(Landroid/content/ContentResolver;I)I

    .line 18
    move-result p1

    .line 21
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mShownCounts:I

    .line 22
    new-instance p1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl$1;

    .line 24
    new-instance p2, Landroid/os/Handler;

    .line 26
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 28
    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl$1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;Landroid/os/Handler;)V

    .line 31
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mNavigationObserver:Landroid/database/ContentObserver;

    .line 34
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 36
    const-string p2, "force_fsg_nav_bar"

    .line 38
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 40
    move-result-object p2

    .line 43
    const/4 p3, 0x0

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mNavigationObserver:Landroid/database/ContentObserver;

    .line 45
    invoke-virtual {p1, p2, p3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 47
    return-void
    .line 50
.end method

.method public removeTutorialFromWindowManager(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 14
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 16
    iput-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 19
    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->setTutorialShownCountIncrement()Z

    .line 23
    :cond_1
    return-void
    .line 26
.end method

.method public setTargetViewContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 2
    return-void
    .line 4
.end method

.method public setTutorialShownCountIncrement()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->canShowTutorial()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mShownCounts:I

    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 12
    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mShownCounts:I

    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mSettingsUtil:Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;

    .line 16
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandlerImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 18
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 20
    move-result v2

    .line 23
    invoke-virtual {v1, p0, v0, v2}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->setTutorialShownCounts(Landroid/content/ContentResolver;II)Z

    .line 24
    move-result p0

    .line 27
    return p0
    .line 28
.end method
