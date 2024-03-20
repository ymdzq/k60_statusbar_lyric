.class Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$2;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->initHeaderView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$2;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings$2;->this$0:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {p0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->-$$Nest$fgetmCheckbox(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->toggle()V

    return-void
.end method
