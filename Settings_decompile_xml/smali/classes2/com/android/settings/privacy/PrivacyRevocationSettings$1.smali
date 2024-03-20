.class Lcom/android/settings/privacy/PrivacyRevocationSettings$1;
.super Ljava/lang/Object;
.source "PrivacyRevocationSettings.java"

# interfaces
.implements Lcom/android/settings/privacy/PrivacyRevocationAdapter$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacy/PrivacyRevocationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/privacy/PrivacyRevocationSettings;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$1;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/android/settings/privacy/PrivacyItem;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyRevocationSettings$1;->this$0:Lcom/android/settings/privacy/PrivacyRevocationSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/privacy/PrivacyRevocationSettings;->handleClick(Lcom/android/settings/privacy/PrivacyItem;)V

    return-void
.end method
