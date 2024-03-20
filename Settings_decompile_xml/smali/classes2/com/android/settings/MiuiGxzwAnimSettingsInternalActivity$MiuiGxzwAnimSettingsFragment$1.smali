.class Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$1;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimSettingsInternalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->showGxzwAnimDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$1;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 171
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
