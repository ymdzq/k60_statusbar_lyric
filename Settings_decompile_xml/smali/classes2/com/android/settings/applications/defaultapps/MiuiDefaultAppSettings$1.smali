.class Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings$1;
.super Ljava/lang/Object;
.source "MiuiDefaultAppSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings$1;->this$0:Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings$1;->this$0:Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;

    invoke-static {p0}, Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;->-$$Nest$mresetToDefault(Lcom/android/settings/applications/defaultapps/MiuiDefaultAppSettings;)V

    return-void
.end method
