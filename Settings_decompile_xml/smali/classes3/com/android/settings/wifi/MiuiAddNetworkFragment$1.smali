.class Lcom/android/settings/wifi/MiuiAddNetworkFragment$1;
.super Ljava/lang/Object;
.source "MiuiAddNetworkFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiAddNetworkFragment;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiAddNetworkFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiAddNetworkFragment;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment$1;->this$0:Lcom/android/settings/wifi/MiuiAddNetworkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddNetworkFragment$1;->this$0:Lcom/android/settings/wifi/MiuiAddNetworkFragment;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiAddNetworkFragment;->-$$Nest$menableSubmitIfAppropriate(Lcom/android/settings/wifi/MiuiAddNetworkFragment;)V

    return-void
.end method
