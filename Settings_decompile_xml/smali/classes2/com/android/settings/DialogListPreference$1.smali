.class Lcom/android/settings/DialogListPreference$1;
.super Ljava/lang/Object;
.source "DialogListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DialogListPreference;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DialogListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/DialogListPreference;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/DialogListPreference$1;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-ltz p2, :cond_1

    .line 70
    iget-object p1, p0, Lcom/android/settings/DialogListPreference$1;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    array-length p1, p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/android/settings/DialogListPreference$1;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-virtual {p1, p2}, Lcom/android/settings/DialogListPreference;->setValueIndex(I)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/DialogListPreference$1;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-virtual {p1}, Lcom/android/settings/CustomListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 75
    iget-object p0, p0, Lcom/android/settings/DialogListPreference$1;->this$0:Lcom/android/settings/DialogListPreference;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
