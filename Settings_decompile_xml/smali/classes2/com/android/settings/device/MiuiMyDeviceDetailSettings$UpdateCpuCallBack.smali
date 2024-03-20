.class Lcom/android/settings/device/MiuiMyDeviceDetailSettings$UpdateCpuCallBack;
.super Ljava/lang/Object;
.source "MiuiMyDeviceDetailSettings.java"

# interfaces
.implements Lcom/android/settings/device/controller/MiuiDeviceCpuInfoController$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/MiuiMyDeviceDetailSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateCpuCallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/settings/device/controller/MiuiDeviceCpuInfoController$CallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/device/MiuiMyDeviceDetailSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)V
    .locals 1

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$UpdateCpuCallBack;->mFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic onRequestComplete(Ljava/lang/Object;)V
    .locals 0

    .line 459
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$UpdateCpuCallBack;->onRequestComplete(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestComplete(Ljava/lang/String;)V
    .locals 5

    .line 468
    iget-object p0, p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings$UpdateCpuCallBack;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;

    if-eqz p0, :cond_8

    .line 469
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->-$$Nest$fgetmPresenter(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Lcom/android/settings/device/DeviceBasicInfoPresenter;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 470
    invoke-static {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->-$$Nest$fgetmPresenter(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Lcom/android/settings/device/DeviceBasicInfoPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->isCardsInitComplete()Z

    move-result v0

    const-string v1, "\n"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 471
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->-$$Nest$fgetmIsNeedUpdateCpu(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 474
    :cond_0
    invoke-static {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->-$$Nest$fgetmPresenter(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Lcom/android/settings/device/DeviceBasicInfoPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->getCardByIndex(I)Lcom/android/settings/device/DeviceCardInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 476
    invoke-static {}, Lcom/android/settings/device/ParseMiShopDataUtils;->getCpuInfo()Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/device/DeviceCardInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/device/DeviceCardInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/settings/device/DeviceCardInfo;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    .line 482
    :cond_2
    :goto_0
    sget-object p1, Lcom/android/settings/device/DeviceBasicInfoPresenter;->ICON_MAP:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setIconResId(I)V

    .line 483
    invoke-static {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->-$$Nest$fgetmPresenter(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Lcom/android/settings/device/DeviceBasicInfoPresenter;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->updateCardByIndex(ILcom/android/settings/device/DeviceCardInfo;)V

    .line 484
    invoke-static {p0, v2}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->-$$Nest$fputmIsNeedUpdateCpu(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;Z)V

    goto/16 :goto_3

    :cond_3
    :goto_1
    return-void

    .line 487
    :cond_4
    new-instance v0, Lcom/android/settings/device/DeviceCardInfo;

    invoke-direct {v0}, Lcom/android/settings/device/DeviceCardInfo;-><init>()V

    .line 488
    invoke-static {}, Lcom/android/settings/device/ParseMiShopDataUtils;->getCpuInfo()Ljava/lang/String;

    move-result-object v3

    .line 489
    invoke-static {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->-$$Nest$fgetmIsNeedAddBasicCpu(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 491
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 492
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 494
    :cond_6
    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v4, :cond_7

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 498
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setValue(Ljava/lang/String;)V

    .line 501
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->device_cpu:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setTitle(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 502
    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setType(I)V

    .line 503
    sget-object p1, Lcom/android/settings/device/DeviceBasicInfoPresenter;->ICON_MAP:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setIconResId(I)V

    .line 504
    invoke-static {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->-$$Nest$fgetmClickListener(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "cpu_item"

    .line 505
    invoke-virtual {v0, p1}, Lcom/android/settings/device/DeviceCardInfo;->setKey(Ljava/lang/String;)V

    .line 506
    invoke-static {p0}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->-$$Nest$fgetmPresenter(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;)Lcom/android/settings/device/DeviceBasicInfoPresenter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settings/device/DeviceBasicInfoPresenter;->addBasicInfoCard(Lcom/android/settings/device/DeviceCardInfo;)V

    .line 507
    invoke-static {p0, v2}, Lcom/android/settings/device/MiuiMyDeviceDetailSettings;->-$$Nest$fputmIsNeedAddBasicCpu(Lcom/android/settings/device/MiuiMyDeviceDetailSettings;Z)V

    nop

    :cond_8
    :goto_3
    return-void
.end method
