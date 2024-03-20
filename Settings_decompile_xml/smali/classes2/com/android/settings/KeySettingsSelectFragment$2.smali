.class Lcom/android/settings/KeySettingsSelectFragment$2;
.super Ljava/lang/Object;
.source "KeySettingsSelectFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KeySettingsSelectFragment;->bringUpFsgChooseDlg(Ljava/lang/String;Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KeySettingsSelectFragment;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$preference:Lmiuix/preference/RadioButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/KeySettingsSelectFragment;Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment$2;->this$0:Lcom/android/settings/KeySettingsSelectFragment;

    iput-object p2, p0, Lcom/android/settings/KeySettingsSelectFragment$2;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/KeySettingsSelectFragment$2;->val$preference:Lmiuix/preference/RadioButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 326
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment$2;->this$0:Lcom/android/settings/KeySettingsSelectFragment;

    iget-object p2, p0, Lcom/android/settings/KeySettingsSelectFragment$2;->val$action:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/KeySettingsSelectFragment$2;->val$preference:Lmiuix/preference/RadioButtonPreference;

    invoke-static {p1, p2, v0}, Lcom/android/settings/KeySettingsSelectFragment;->-$$Nest$mperformFsgChange(Lcom/android/settings/KeySettingsSelectFragment;Ljava/lang/String;Lmiuix/preference/RadioButtonPreference;)V

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment$2;->this$0:Lcom/android/settings/KeySettingsSelectFragment;

    invoke-static {p1}, Lcom/android/settings/KeySettingsSelectFragment;->-$$Nest$fgetmFsgChangeDialog(Lcom/android/settings/KeySettingsSelectFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/android/settings/KeySettingsSelectFragment$2;->this$0:Lcom/android/settings/KeySettingsSelectFragment;

    invoke-static {p1}, Lcom/android/settings/KeySettingsSelectFragment;->-$$Nest$fgetmFsgChangeDialog(Lcom/android/settings/KeySettingsSelectFragment;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 330
    iget-object p0, p0, Lcom/android/settings/KeySettingsSelectFragment$2;->this$0:Lcom/android/settings/KeySettingsSelectFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/KeySettingsSelectFragment;->-$$Nest$fputmFsgChangeDialog(Lcom/android/settings/KeySettingsSelectFragment;Lmiuix/appcompat/app/AlertDialog;)V

    :cond_1
    return-void
.end method
