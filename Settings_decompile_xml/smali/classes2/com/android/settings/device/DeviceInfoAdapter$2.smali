.class Lcom/android/settings/device/DeviceInfoAdapter$2;
.super Ljava/lang/Object;
.source "DeviceInfoAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/device/DeviceInfoAdapter;->onBindViewHolder(Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/DeviceInfoAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/device/DeviceInfoAdapter;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/settings/device/DeviceInfoAdapter$2;->this$0:Lcom/android/settings/device/DeviceInfoAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 175
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p2, 0x1

    if-eq p0, p2, :cond_0

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 181
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    const p0, 0x3f19999a    # 0.6f

    .line 177
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method
