.class Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

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
    iget-object p1, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    .line 2
    iput p2, p1, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->mClickedDialogEntryIndex:I

    .line 4
    invoke-virtual {p1}, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/systemui/tuner/CustomListPreference;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;->this$0:Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;

    .line 13
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 15
    move-result-object p1

    .line 18
    const/4 p2, -0x1

    .line 19
    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 20
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 23
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 27
    return-void
    .line 30
.end method
