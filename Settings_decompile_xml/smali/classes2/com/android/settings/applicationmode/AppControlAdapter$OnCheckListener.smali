.class Lcom/android/settings/applicationmode/AppControlAdapter$OnCheckListener;
.super Ljava/lang/Object;
.source "AppControlAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applicationmode/AppControlAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnCheckListener"
.end annotation


# instance fields
.field position:I

.field final synthetic this$0:Lcom/android/settings/applicationmode/AppControlAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/applicationmode/AppControlAdapter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppControlAdapter$OnCheckListener;->this$0:Lcom/android/settings/applicationmode/AppControlAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 58
    iget p1, p0, Lcom/android/settings/applicationmode/AppControlAdapter$OnCheckListener;->position:I

    iget-object v0, p0, Lcom/android/settings/applicationmode/AppControlAdapter$OnCheckListener;->this$0:Lcom/android/settings/applicationmode/AppControlAdapter;

    invoke-static {v0}, Lcom/android/settings/applicationmode/AppControlAdapter;->-$$Nest$fgetmAppItemInfoList(Lcom/android/settings/applicationmode/AppControlAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 59
    iget-object p1, p0, Lcom/android/settings/applicationmode/AppControlAdapter$OnCheckListener;->this$0:Lcom/android/settings/applicationmode/AppControlAdapter;

    invoke-static {p1}, Lcom/android/settings/applicationmode/AppControlAdapter;->-$$Nest$fgetmAppItemInfoList(Lcom/android/settings/applicationmode/AppControlAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/applicationmode/AppControlAdapter$OnCheckListener;->position:I

    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applicationmode/AppItemInfo;

    .line 61
    invoke-virtual {p1}, Lcom/android/settings/applicationmode/AppItemInfo;->isOpenEmbedded()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter$OnCheckListener;->this$0:Lcom/android/settings/applicationmode/AppControlAdapter;

    invoke-static {p0}, Lcom/android/settings/applicationmode/AppControlAdapter;->-$$Nest$fgetmCallBack(Lcom/android/settings/applicationmode/AppControlAdapter;)Lcom/android/settings/applicationmode/SwitchCallBack;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/applicationmode/AppItemInfo;->getPkg()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lcom/android/settings/applicationmode/SwitchCallBack;->onCheckedChangedListener(Ljava/lang/String;Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 64
    sget-object p0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->EMBEDDED:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    goto :goto_0

    .line 65
    :cond_1
    sget-object p0, Lcom/android/settings/applicationmode/AppItemInfo$AppState;->SIZE_COMPAT_FULL:Lcom/android/settings/applicationmode/AppItemInfo$AppState;

    .line 64
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settings/applicationmode/AppItemInfo;->setAppState(Lcom/android/settings/applicationmode/AppItemInfo$AppState;)V

    :cond_2
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/android/settings/applicationmode/AppControlAdapter$OnCheckListener;->position:I

    return-void
.end method
