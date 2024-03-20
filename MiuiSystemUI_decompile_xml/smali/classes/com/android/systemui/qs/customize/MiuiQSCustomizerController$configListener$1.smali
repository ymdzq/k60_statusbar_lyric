.class public final Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$configListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$configListener$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$configListener$1;->this$0:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 7
    const v0, 0x7f0b00f9    # @integer/quick_settings_num_columns '4'

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 11
    move-result p1

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ge v0, p1, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    move p1, v0

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->setSpanCount(I)V

    .line 20
    return-void
    .line 23
.end method
