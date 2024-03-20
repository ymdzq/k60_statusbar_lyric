.class Lcom/android/settings/device/DeviceBasicInfoPresenter$4;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "DeviceBasicInfoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/device/DeviceBasicInfoPresenter;->buildGridView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

.field final synthetic val$lineNum:I


# direct methods
.method constructor <init>(Lcom/android/settings/device/DeviceBasicInfoPresenter;I)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$4;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    iput p2, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$4;->val$lineNum:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$4;->this$0:Lcom/android/settings/device/DeviceBasicInfoPresenter;

    invoke-static {v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->-$$Nest$fgetmDisplayCards(Lcom/android/settings/device/DeviceBasicInfoPresenter;)[Lcom/android/settings/device/DeviceCardInfo;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/android/settings/device/DeviceCardInfo;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 175
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->hasMarketName()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/device/DeviceBasicInfoPresenter$4;->val$lineNum:I

    :cond_1
    :goto_0
    return v0
.end method
