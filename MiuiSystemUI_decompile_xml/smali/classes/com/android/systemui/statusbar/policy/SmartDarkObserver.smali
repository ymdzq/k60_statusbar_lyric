.class public final Lcom/android/systemui/statusbar/policy/SmartDarkObserver;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mMainHandler:Landroid/os/Handler;

.field public volatile mSmartDark:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartDarkObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartDarkObserver;->mContext:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartDarkObserver;->mMainHandler:Landroid/os/Handler;

    .line 14
    new-instance p2, Lcom/android/systemui/statusbar/policy/SmartDarkObserver$1;

    .line 16
    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/policy/SmartDarkObserver$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartDarkObserver;Landroid/os/Handler;)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object p0

    .line 24
    const-string/jumbo p1, "ui_night_mode"

    .line 25
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    move-result-object p1

    .line 31
    const/4 v0, 0x0

    .line 32
    const/4 v1, -0x1

    .line 33
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 34
    new-instance p0, Lcom/android/systemui/statusbar/policy/SmartDarkObserver$2;

    .line 37
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/SmartDarkObserver$2;-><init>(Lcom/android/systemui/statusbar/policy/SmartDarkObserver$1;)V

    .line 39
    invoke-virtual {p3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
    .line 45
.end method
