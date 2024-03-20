.class Lcom/android/settings/wifi/EditPreferenceFragment$1;
.super Ljava/lang/Object;
.source "EditPreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/EditPreferenceFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/EditPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/EditPreferenceFragment;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/wifi/EditPreferenceFragment$1;->this$0:Lcom/android/settings/wifi/EditPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/wifi/EditPreferenceFragment$1;->this$0:Lcom/android/settings/wifi/EditPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/EditPreferenceFragment;->onCancel()V

    return-void
.end method
