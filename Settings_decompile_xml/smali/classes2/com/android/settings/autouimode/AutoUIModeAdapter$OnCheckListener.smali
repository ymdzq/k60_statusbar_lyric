.class Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;
.super Ljava/lang/Object;
.source "AutoUIModeAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/autouimode/AutoUIModeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnCheckListener"
.end annotation


# instance fields
.field position:I

.field final synthetic this$0:Lcom/android/settings/autouimode/AutoUIModeAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/autouimode/AutoUIModeAdapter;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;->this$0:Lcom/android/settings/autouimode/AutoUIModeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 55
    iget p1, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;->position:I

    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;->this$0:Lcom/android/settings/autouimode/AutoUIModeAdapter;

    invoke-static {v0}, Lcom/android/settings/autouimode/AutoUIModeAdapter;->-$$Nest$fgetmData(Lcom/android/settings/autouimode/AutoUIModeAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 56
    iget-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;->this$0:Lcom/android/settings/autouimode/AutoUIModeAdapter;

    invoke-static {p1}, Lcom/android/settings/autouimode/AutoUIModeAdapter;->-$$Nest$fgetmData(Lcom/android/settings/autouimode/AutoUIModeAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;->position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/autouimode/AutoUIInfo;

    .line 57
    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;->this$0:Lcom/android/settings/autouimode/AutoUIModeAdapter;

    invoke-static {v0}, Lcom/android/settings/autouimode/AutoUIModeAdapter;->-$$Nest$fgetmData(Lcom/android/settings/autouimode/AutoUIModeAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;->this$0:Lcom/android/settings/autouimode/AutoUIModeAdapter;

    invoke-static {p0}, Lcom/android/settings/autouimode/AutoUIModeAdapter;->-$$Nest$fgetmCallBack(Lcom/android/settings/autouimode/AutoUIModeAdapter;)Lcom/android/settings/autouimode/SwitchCallBack;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/settings/autouimode/AutoUIInfo;->getmPkg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/android/settings/autouimode/SwitchCallBack;->onCheckedChangedListener(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/settings/autouimode/AutoUIModeAdapter$OnCheckListener;->position:I

    return-void
.end method
