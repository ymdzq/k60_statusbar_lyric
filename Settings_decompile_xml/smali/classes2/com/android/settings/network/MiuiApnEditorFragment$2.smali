.class Lcom/android/settings/network/MiuiApnEditorFragment$2;
.super Ljava/lang/Object;
.source "MiuiApnEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/MiuiApnEditorFragment;->checkToSave()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/MiuiApnEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/network/MiuiApnEditorFragment;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/network/MiuiApnEditorFragment$2;->this$0:Lcom/android/settings/network/MiuiApnEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/android/settings/network/MiuiApnEditorFragment$2;->this$0:Lcom/android/settings/network/MiuiApnEditorFragment;

    invoke-virtual {p1}, Lcom/android/settings/network/apn/ApnEditor;->validateAndSaveApnData()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/settings/network/MiuiApnEditorFragment$2;->this$0:Lcom/android/settings/network/MiuiApnEditorFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method
