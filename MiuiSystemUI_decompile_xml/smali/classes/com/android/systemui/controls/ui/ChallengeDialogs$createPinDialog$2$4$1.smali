.class public final Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $editText:Landroid/widget/EditText;

.field public final synthetic $useAlphaCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4$1;->$editText:Landroid/widget/EditText;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4$1;->$useAlphaCheckBox:Landroid/widget/CheckBox;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4$1;->$editText:Landroid/widget/EditText;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4$1;->$useAlphaCheckBox:Landroid/widget/CheckBox;

    .line 4
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/16 p0, 0x81

    .line 12
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setInputType(I)V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    const/16 p0, 0x12

    .line 18
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setInputType(I)V

    .line 20
    :goto_0
    return-void
    .line 23
.end method
