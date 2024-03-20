.class Lcom/android/settings/SettingsFragment$SearchResultAdapter$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsFragment$SearchResultAdapter;->onBindViewHolder(Lcom/android/settings/SettingsFragment$SearchItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsFragment$SearchResultAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFragment$SearchResultAdapter;)V
    .locals 0

    .line 1583
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter$1;->this$1:Lcom/android/settings/SettingsFragment$SearchResultAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1586
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->getBugreportIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1588
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter$1;->this$1:Lcom/android/settings/SettingsFragment$SearchResultAdapter;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SettingsFragment"

    const-string v0, "jump to bugreport erro: "

    .line 1590
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
