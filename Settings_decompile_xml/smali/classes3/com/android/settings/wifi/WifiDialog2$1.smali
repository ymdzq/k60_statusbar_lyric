.class Lcom/android/settings/wifi/WifiDialog2$1;
.super Ljava/lang/Object;
.source "WifiDialog2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiDialog2;->initWifiShare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsShowPassword:Z

.field final synthetic this$0:Lcom/android/settings/wifi/WifiDialog2;

.field final synthetic val$showPassword:Z


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDialog2;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDialog2$1;->this$0:Lcom/android/settings/wifi/WifiDialog2;

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiDialog2$1;->val$showPassword:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiDialog2$1;->mIsShowPassword:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 341
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog2$1;->mIsShowPassword:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog2$1;->mIsShowPassword:Z

    .line 342
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog2$1;->this$0:Lcom/android/settings/wifi/WifiDialog2;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiDialog2;->-$$Nest$fgetmWifiEntry(Lcom/android/settings/wifi/WifiDialog2;)Lcom/android/wifitrackerlib/WifiEntry;

    .line 345
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog2$1;->this$0:Lcom/android/settings/wifi/WifiDialog2;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog2$1;->mIsShowPassword:Z

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiDialog2;->-$$Nest$mshowPassword(Lcom/android/settings/wifi/WifiDialog2;Z)V

    .line 346
    check-cast p1, Landroid/widget/ImageView;

    .line 347
    iget-boolean p0, p0, Lcom/android/settings/wifi/WifiDialog2$1;->mIsShowPassword:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$drawable;->wifi_show_password:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->wifi_not_show_password:I

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
