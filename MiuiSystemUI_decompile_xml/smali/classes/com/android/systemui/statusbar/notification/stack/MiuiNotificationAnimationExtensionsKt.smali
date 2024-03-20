.class public abstract Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimationExtensionsKt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final PROPERTY_SPRING_Y_OFFSET:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimationExtensionsKt$PROPERTY_SPRING_Y_OFFSET$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimationExtensionsKt$PROPERTY_SPRING_Y_OFFSET$1;-><init>()V

    .line 4
    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 7
    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 9
    const v2, 0x7f0a05d5    # @id/miui_spring_y_offset_animator_end_tag

    .line 11
    const v3, 0x7f0a05d7    # @id/miui_spring_y_offset_animator_tag

    .line 14
    const v4, 0x7f0a05d6    # @id/miui_spring_y_offset_animator_start_tag

    .line 17
    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    .line 20
    sput-object v1, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationAnimationExtensionsKt;->PROPERTY_SPRING_Y_OFFSET:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 23
    new-instance v0, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 25
    const v1, 0x3f19999a    # 0.6f

    .line 27
    const v2, 0x3f4ccccd    # 0.8f

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 33
    return-void
    .line 36
.end method
