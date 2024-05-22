.class public final synthetic Lcom/miui/systemui/controller/SuperSaveModeController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/systemui/controller/SuperSaveModeController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/miui/systemui/controller/SuperSaveModeController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/miui/systemui/controller/SuperSaveModeController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/miui/systemui/controller/SuperSaveModeController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast p0, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 10
    iget-object p0, p0, Lcom/miui/systemui/controller/SuperSaveModeController;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object p0

    .line 17
    const-string/jumbo v0, "shield_super_save_bar"

    .line 18
    const/4 v1, 0x1

    .line 21
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 22
    return-void

    .line 25
    :goto_0
    iget-object p0, p0, Lcom/miui/systemui/controller/SuperSaveModeController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 26
    check-cast p0, Lcom/miui/systemui/controller/SuperSaveModeController$1;

    .line 28
    iget-object p0, p0, Lcom/miui/systemui/controller/SuperSaveModeController$1;->this$0:Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 30
    iget-boolean v0, p0, Lcom/miui/systemui/controller/SuperSaveModeController;->mSuperSaveModeOn:Z

    .line 32
    iget-object v1, p0, Lcom/miui/systemui/controller/SuperSaveModeController;->mListeners:Ljava/util/List;

    .line 34
    check-cast v1, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    move-result v1

    .line 41
    const/4 v2, 0x0

    .line 42
    :goto_1
    if-ge v2, v1, :cond_1

    .line 43
    iget-object v3, p0, Lcom/miui/systemui/controller/SuperSaveModeController;->mListeners:Ljava/util/List;

    .line 45
    check-cast v3, Ljava/util/ArrayList;

    .line 47
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 52
    check-cast v3, Lcom/miui/systemui/controller/SuperSaveModeController$SuperSaveModeChangeListener;

    .line 53
    if-eqz v3, :cond_0

    .line 55
    invoke-interface {v3, v0}, Lcom/miui/systemui/controller/SuperSaveModeController$SuperSaveModeChangeListener;->onSuperSaveModeChange(Z)V

    .line 57
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 60
    goto :goto_1

    .line 62
    :cond_1
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 64
.end method
