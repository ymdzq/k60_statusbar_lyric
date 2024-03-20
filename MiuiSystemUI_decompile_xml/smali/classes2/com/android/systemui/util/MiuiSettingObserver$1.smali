.class public final Lcom/android/systemui/util/MiuiSettingObserver$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/util/MiuiSettingObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/MiuiSettingObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/MiuiSettingObserver$1;->this$0:Lcom/android/systemui/util/MiuiSettingObserver;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/MiuiSettingObserver$1;->this$0:Lcom/android/systemui/util/MiuiSettingObserver;

    .line 2
    iput p1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mUserId:I

    .line 4
    iget-boolean p1, p0, Lcom/android/systemui/util/MiuiSettingObserver;->mListening:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 11
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/MiuiSettingObserver;->setListening(Z)V

    .line 15
    :cond_0
    return-void
    .line 18
.end method
