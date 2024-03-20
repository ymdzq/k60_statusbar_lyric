.class Lcom/android/settings/TetherDialogActivity$5;
.super Ljava/lang/Object;
.source "TetherDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherDialogActivity;->showPrivacyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherDialogActivity;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/settings/TetherDialogActivity$5;->this$0:Lcom/android/settings/TetherDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/settings/TetherDialogActivity$5;->this$0:Lcom/android/settings/TetherDialogActivity;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
