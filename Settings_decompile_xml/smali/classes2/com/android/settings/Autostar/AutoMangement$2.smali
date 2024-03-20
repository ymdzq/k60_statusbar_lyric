.class Lcom/android/settings/Autostar/AutoMangement$2;
.super Ljava/lang/Object;
.source "AutoMangement.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Autostar/AutoMangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Autostar/AutoMangement;


# direct methods
.method constructor <init>(Lcom/android/settings/Autostar/AutoMangement;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/Autostar/AutoMangement$2;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 82
    iget-object v0, p0, Lcom/android/settings/Autostar/AutoMangement$2;->this$0:Lcom/android/settings/Autostar/AutoMangement;

    iget-object v1, v0, Lcom/android/settings/Autostar/AutoMangement;->mFragment:Landroidx/fragment/app/Fragment;

    const-class p0, Lcom/android/settings/Autostar/Autoallow;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/android/settings/R$string;->add_auto_startup_application:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    return-void
.end method
