.class Lcom/android/settings/applications/MiuiSmsDefaultDialog$4;
.super Ljava/lang/Object;
.source "MiuiSmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/MiuiSmsDefaultDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$4;->this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$4;->this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-static {p1}, Lcom/android/settings/applications/MiuiSmsDefaultDialog;->-$$Nest$fgetmNewSmsApplicationData(Lcom/android/settings/applications/MiuiSmsDefaultDialog;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$4;->this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 93
    iget-object p0, p0, Lcom/android/settings/applications/MiuiSmsDefaultDialog$4;->this$0:Lcom/android/settings/applications/MiuiSmsDefaultDialog;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method
