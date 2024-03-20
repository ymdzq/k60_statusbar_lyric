.class Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment$1;->this$0:Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment$1;->this$0:Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;

    .line 2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object p0

    .line 11
    const-string/jumbo p1, "seen_tuner_warning"

    .line 12
    const/4 p2, 0x1

    .line 15
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 16
    return-void
    .line 19
.end method
