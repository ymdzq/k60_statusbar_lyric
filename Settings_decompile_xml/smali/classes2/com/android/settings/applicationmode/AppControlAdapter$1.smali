.class Lcom/android/settings/applicationmode/AppControlAdapter$1;
.super Ljava/lang/Object;
.source "AppControlAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applicationmode/AppControlAdapter;->onBindViewHolder(Lcom/android/settings/applicationmode/AppControlAdapter$AppControlHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applicationmode/AppControlAdapter;

.field final synthetic val$itemInfo:Lcom/android/settings/applicationmode/AppItemInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/applicationmode/AppControlAdapter;Lcom/android/settings/applicationmode/AppItemInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppControlAdapter$1;->this$0:Lcom/android/settings/applicationmode/AppControlAdapter;

    iput-object p2, p0, Lcom/android/settings/applicationmode/AppControlAdapter$1;->val$itemInfo:Lcom/android/settings/applicationmode/AppItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 140
    iget-object p1, p0, Lcom/android/settings/applicationmode/AppControlAdapter$1;->this$0:Lcom/android/settings/applicationmode/AppControlAdapter;

    invoke-static {p1}, Lcom/android/settings/applicationmode/AppControlAdapter;->-$$Nest$fgetmCallBack(Lcom/android/settings/applicationmode/AppControlAdapter;)Lcom/android/settings/applicationmode/SwitchCallBack;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlAdapter$1;->val$itemInfo:Lcom/android/settings/applicationmode/AppItemInfo;

    invoke-virtual {p0}, Lcom/android/settings/applicationmode/AppItemInfo;->getPkg()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p3}, Lcom/android/settings/applicationmode/SwitchCallBack;->OnItemSelectedListener(Ljava/lang/String;I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    const-string p0, "AppControlAdapter"

    const-string p1, "click onNothingSelected"

    .line 144
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
