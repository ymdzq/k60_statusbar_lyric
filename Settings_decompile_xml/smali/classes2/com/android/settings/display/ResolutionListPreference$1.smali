.class Lcom/android/settings/display/ResolutionListPreference$1;
.super Ljava/lang/Object;
.source "ResolutionListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ResolutionListPreference;->onPrepareDialogBuilder(Lmiuix/appcompat/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ResolutionListPreference;

.field final synthetic val$currentValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ResolutionListPreference;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/android/settings/display/ResolutionListPreference$1;->this$0:Lcom/android/settings/display/ResolutionListPreference;

    iput-object p2, p0, Lcom/android/settings/display/ResolutionListPreference$1;->val$currentValue:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 143
    iget-object p1, p0, Lcom/android/settings/display/ResolutionListPreference$1;->this$0:Lcom/android/settings/display/ResolutionListPreference;

    invoke-static {p1, p2}, Lcom/android/settings/display/ResolutionListPreference;->-$$Nest$fputmClickedEntryIndex(Lcom/android/settings/display/ResolutionListPreference;I)V

    .line 144
    iget-object p1, p0, Lcom/android/settings/display/ResolutionListPreference$1;->this$0:Lcom/android/settings/display/ResolutionListPreference;

    invoke-virtual {p1}, Lcom/android/settings/CustomListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    .line 145
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/android/settings/display/ResolutionListPreference$1;->val$currentValue:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/display/ResolutionListPreference$1;->this$0:Lcom/android/settings/display/ResolutionListPreference;

    .line 148
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 151
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 149
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void
.end method
