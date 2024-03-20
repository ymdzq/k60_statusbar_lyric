.class public final Lcom/android/systemui/fsgesture/DrawerDemoAct$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    .line 14
    move-result v0

    .line 17
    sget-boolean v1, Lcom/android/systemui/fsgesture/DrawerDemoAct;->IS_DEBUG:Z

    .line 18
    if-eqz v1, :cond_0

    .line 20
    const-string v1, "====>>>> width:"

    .line 22
    const-string v2, "DrawerDemoAct"

    .line 24
    invoke-static {v1, v0, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Ljava/lang/Object;

    .line 29
    check-cast p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 31
    neg-int v0, v0

    .line 33
    iput v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->initTranslateWidht:I

    .line 34
    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->maxTranslateWidth:I

    .line 37
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    .line 39
    int-to-float v0, v0

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 42
    return-void

    .line 45
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;->this$0:Ljava/lang/Object;

    .line 46
    check-cast p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;->this$0:Lcom/android/systemui/fsgesture/DrawerDemoAct;

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 52
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 56
.end method
