.class public final Lcom/miui/systemui/display/OLEDScreenHelper$mConfigurationListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/display/OLEDScreenHelper;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/display/OLEDScreenHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper$mConfigurationListener$1;->this$0:Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/display/OLEDScreenHelper$mConfigurationListener$1;->this$0:Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 2
    iget-boolean p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mIsScreenOn:Z

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/systemui/display/OLEDScreenHelper;->stop(Z)V

    .line 6
    iget-boolean p1, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mIsScreenOn:Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/miui/systemui/display/OLEDScreenHelper;->start(Z)V

    .line 11
    return-void
    .line 14
.end method

.method public final onThemeChanged()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/display/OLEDScreenHelper$mConfigurationListener$1;->this$0:Lcom/miui/systemui/display/OLEDScreenHelper;

    .line 2
    iget-boolean v0, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mIsScreenOn:Z

    .line 4
    invoke-virtual {p0, v0}, Lcom/miui/systemui/display/OLEDScreenHelper;->stop(Z)V

    .line 6
    iget-boolean v0, p0, Lcom/miui/systemui/display/OLEDScreenHelper;->mIsScreenOn:Z

    .line 9
    invoke-virtual {p0, v0}, Lcom/miui/systemui/display/OLEDScreenHelper;->start(Z)V

    .line 11
    return-void
    .line 14
.end method
