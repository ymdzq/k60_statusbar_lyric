.class Lcom/android/settings/accounts/MiuiChooseAccountFragment$1;
.super Ljava/lang/Object;
.source "MiuiChooseAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/MiuiChooseAccountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/MiuiChooseAccountFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/MiuiChooseAccountFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/MiuiChooseAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/MiuiChooseAccountFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->-$$Nest$mfinishWithAccountType(Lcom/android/settings/accounts/MiuiChooseAccountFragment;Ljava/lang/String;)V

    return-void
.end method
