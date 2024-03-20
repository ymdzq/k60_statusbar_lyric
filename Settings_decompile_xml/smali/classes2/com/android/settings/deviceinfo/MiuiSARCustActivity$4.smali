.class Lcom/android/settings/deviceinfo/MiuiSARCustActivity$4;
.super Ljava/lang/Object;
.source "MiuiSARCustActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MiuiSARCustActivity;->showRegulatoryInfoPanel(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MiuiSARCustActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiuiSARCustActivity;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiuiSARCustActivity$4;->this$0:Lcom/android/settings/deviceinfo/MiuiSARCustActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 85
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 86
    iget-object p0, p0, Lcom/android/settings/deviceinfo/MiuiSARCustActivity$4;->this$0:Lcom/android/settings/deviceinfo/MiuiSARCustActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
