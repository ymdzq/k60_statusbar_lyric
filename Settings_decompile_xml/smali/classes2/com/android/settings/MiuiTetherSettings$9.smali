.class Lcom/android/settings/MiuiTetherSettings$9;
.super Ljava/lang/Object;
.source "MiuiTetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiTetherSettings;->showConfirmDlg(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .line 1025
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$9;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1030
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$9;->this$0:Lcom/android/settings/MiuiTetherSettings;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$mstartProvisioningIfNecessary(Lcom/android/settings/MiuiTetherSettings;I)V

    return-void
.end method
