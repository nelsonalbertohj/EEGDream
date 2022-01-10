
�~root"_tf_keras_network*�~{"name": "model_65", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_65", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_29"}, "name": "input_29", "inbound_nodes": []}, {"class_name": "DepthwiseConv1D", "config": {"name": "depthwise_conv1d_27", "trainable": true, "dtype": "float32", "kernel_size": {"class_name": "__tuple__", "items": [128]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "bias_initializer": {"class_name": "Zeros", "config": {}}, "bias_regularizer": null, "activity_regularizer": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "depthwise_constraint": null}, "name": "depthwise_conv1d_27", "inbound_nodes": [[["input_29", 0, 0, {}]]]}, {"class_name": "SeparableConv1D", "config": {"name": "separable_conv1d_43", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [128]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}, "name": "separable_conv1d_43", "inbound_nodes": [[["depthwise_conv1d_27", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_50", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_50", "inbound_nodes": [[["separable_conv1d_43", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_50", "trainable": true, "dtype": "float32", "activation": "elu"}, "name": "activation_50", "inbound_nodes": [[["batch_normalization_50", 0, 0, {}]]]}, {"class_name": "AveragePooling1D", "config": {"name": "average_pooling1d_49", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}, "name": "average_pooling1d_49", "inbound_nodes": [[["activation_50", 0, 0, {}]]]}, {"class_name": "SeparableConv1D", "config": {"name": "separable_conv1d_44", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [64]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}, "name": "separable_conv1d_44", "inbound_nodes": [[["average_pooling1d_49", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_51", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_51", "inbound_nodes": [[["separable_conv1d_44", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "activation_51", "trainable": true, "dtype": "float32", "activation": "elu"}, "name": "activation_51", "inbound_nodes": [[["batch_normalization_51", 0, 0, {}]]]}, {"class_name": "AveragePooling1D", "config": {"name": "average_pooling1d_50", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}, "name": "average_pooling1d_50", "inbound_nodes": [[["activation_51", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_30", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_30", "inbound_nodes": [[["average_pooling1d_50", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["dropout_30", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 12, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 0.25, "axis": 0}}, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["flatten", 0, 0, {}]]]}, {"class_name": "Activation", "config": {"name": "softmax", "trainable": true, "dtype": "float32", "activation": "softmax"}, "name": "softmax", "inbound_nodes": [[["dense", 0, 0, {}]]]}], "input_layers": [["input_29", 0, 0]], "output_layers": [["softmax", 0, 0]]}, "shared_object_id": 36, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 256, 8]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 8]}, "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256, 8]}, "float32", "input_29"]}], {}]}, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256, 8]}, "float32", "input_29"]}, "keras_version": "2.7.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_65", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_29"}, "name": "input_29", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "DepthwiseConv1D", "config": {"name": "depthwise_conv1d_27", "trainable": true, "dtype": "float32", "kernel_size": {"class_name": "__tuple__", "items": [128]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "bias_regularizer": null, "activity_regularizer": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "depthwise_regularizer": null, "depthwise_constraint": null}, "name": "depthwise_conv1d_27", "inbound_nodes": [[["input_29", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "SeparableConv1D", "config": {"name": "separable_conv1d_43", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [128]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}, "name": "separable_conv1d_43", "inbound_nodes": [[["depthwise_conv1d_27", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_50", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 11}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 13}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_50", "inbound_nodes": [[["separable_conv1d_43", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "Activation", "config": {"name": "activation_50", "trainable": true, "dtype": "float32", "activation": "elu"}, "name": "activation_50", "inbound_nodes": [[["batch_normalization_50", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "AveragePooling1D", "config": {"name": "average_pooling1d_49", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}, "name": "average_pooling1d_49", "inbound_nodes": [[["activation_50", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "SeparableConv1D", "config": {"name": "separable_conv1d_44", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [64]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}, "name": "separable_conv1d_44", "inbound_nodes": [[["average_pooling1d_49", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_51", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 23}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_51", "inbound_nodes": [[["separable_conv1d_44", 0, 0, {}]]], "shared_object_id": 26}, {"class_name": "Activation", "config": {"name": "activation_51", "trainable": true, "dtype": "float32", "activation": "elu"}, "name": "activation_51", "inbound_nodes": [[["batch_normalization_51", 0, 0, {}]]], "shared_object_id": 27}, {"class_name": "AveragePooling1D", "config": {"name": "average_pooling1d_50", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}, "name": "average_pooling1d_50", "inbound_nodes": [[["activation_51", 0, 0, {}]]], "shared_object_id": 28}, {"class_name": "Dropout", "config": {"name": "dropout_30", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_30", "inbound_nodes": [[["average_pooling1d_50", 0, 0, {}]]], "shared_object_id": 29}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["dropout_30", 0, 0, {}]]], "shared_object_id": 30}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 12, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": {"class_name": "MaxNorm", "config": {"max_value": 0.25, "axis": 0}, "shared_object_id": 33}, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["flatten", 0, 0, {}]]], "shared_object_id": 34}, {"class_name": "Activation", "config": {"name": "softmax", "trainable": true, "dtype": "float32", "activation": "softmax"}, "name": "softmax", "inbound_nodes": [[["dense", 0, 0, {}]]], "shared_object_id": 35}], "input_layers": [["input_29", 0, 0]], "output_layers": [["softmax", 0, 0]]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 38}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "input_29", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 8]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 256, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_29"}}2
�
root.layer_with_weights-0"_tf_keras_layer*�	{"name": "depthwise_conv1d_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DepthwiseConv1D", "config": {"name": "depthwise_conv1d_27", "trainable": true, "dtype": "float32", "kernel_size": {"class_name": "__tuple__", "items": [128]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "bias_regularizer": null, "activity_regularizer": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "depthwise_regularizer": null, "depthwise_constraint": null}, "inbound_nodes": [[["input_29", 0, 0, {}]]], "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 8}}, "shared_object_id": 39}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 8]}}2
�root.layer_with_weights-1"_tf_keras_layer*�{"name": "separable_conv1d_43", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "SeparableConv1D", "config": {"name": "separable_conv1d_43", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [128]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "linear", "use_bias": false, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "depth_multiplier": 1, "depthwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "pointwise_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "depthwise_regularizer": null, "pointwise_regularizer": null, "depthwise_constraint": null, "pointwise_constraint": null}, "inbound_nodes": [[["depthwise_conv1d_27", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"-1": 8}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 8]}}2
�	root.layer_with_weights-2"_tf_keras_layer*�	{"name": "batch_normalization_50", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_50", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 11}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 13}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["separable_conv1d_43", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 16}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256, 16]}}2
�root.layer-4"_tf_keras_layer*�{"name": "activation_50", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_50", "trainable": true, "dtype": "float32", "activation": "elu"}, "inbound_nodes": [[["batch_normalization_50", 0, 0, {}]]], "shared_object_id": 15}2
�root.layer-5"_tf_keras_layer*�{"name": "average_pooling1d_49", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AveragePooling1D", "config": {"name": "average_pooling1d_49", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}, "inbound_nodes": [[["activation_50", 0, 0, {}]]], "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 42}}2
�
�	root.layer_with_weights-4"_tf_keras_layer*�	{"name": "batch_normalization_51", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_51", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 23}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 25}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["separable_conv1d_44", 0, 0, {}]]], "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 16}}, "shared_object_id": 44}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64, 16]}}2
�	root.layer-8"_tf_keras_layer*�{"name": "activation_51", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Activation", "config": {"name": "activation_51", "trainable": true, "dtype": "float32", "activation": "elu"}, "inbound_nodes": [[["batch_normalization_51", 0, 0, {}]]], "shared_object_id": 27}2
�
root.layer-9"_tf_keras_layer*�{"name": "average_pooling1d_50", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "AveragePooling1D", "config": {"name": "average_pooling1d_50", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [4]}, "pool_size": {"class_name": "__tuple__", "items": [4]}, "padding": "valid", "data_format": "channels_last"}, "inbound_nodes": [[["activation_51", 0, 0, {}]]], "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 45}}2
�
�
�
�
��root.keras_api.metrics.0"_tf_keras_metric*�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 48}2
��root.keras_api.metrics.1"_tf_keras_metric*�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 38}2